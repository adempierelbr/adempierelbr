package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.br.endereco.Cep;
import org.brazilutils.br.endereco.DefaultNormalizer;
import org.brazilutils.br.endereco.Endereco;
import org.brazilutils.br.endereco.EnderecoFormatter;
import org.brazilutils.br.endereco.EnderecoNormalizer;
import org.brazilutils.br.endereco.Logradouro;
import org.brazilutils.br.uf.UF;

public class EnderecoTest extends TestCase {

	/**Validation test
	 * @throws Exception
	 */
	public void test1() throws Exception{ 
		Endereco e = new Endereco();
		e.setLogradouro("Avenida Rio Branco");
		e.setNumero("156");
		e.setComplemento("sala 1010");
		e.setBairro("Centro");
		e.setCidade("Rio de Janeiro");
		e.setUf("RJ");
		e.setCep("21.021-380");
		// Complete and valid
		assertTrue(e.isValid());
		// Still Complete and valid - complemento is not required
		e.setComplemento(null);
		assertTrue(e.isValid());
		// Incomplete and invalid
		e.setLogradouro(""); // logradouro is required
		assertFalse(e.isValid());
		// Complete but Logradouro invalid
		e.setLogradouro("Aven Rio Branco");
		assertFalse(e.isValid());
		// Normalize the TipoLogradouro
		e.getLogradouro().normalizeTipo(); // Aven -> Avenida
		assertTrue(e.isValid());
	}
	
	/** Normalization test
	 * @throws Exception
	 */
	public void test2() throws Exception{
		Endereco e;
		// None Normalizer
		e = new Endereco();
		e.setLogradouro("Aven Rio Branco");
		e.setNumero("156");
		e.setComplemento("sala 1010");
		e.setBairro("Centro");
		e.setCidade("Rio de Janeiro");
		e.setUf("RJ");
		e.setCep("21.021-380");
		// TipoLogradouro = Aven
		assertTrue(e.getTipoLogradouro().equals("Aven") );
		// Sets a Default Normalizer -> CharCase = Upper
		e.setNormalizer(new DefaultNormalizer());
		assertTrue(e.getTipoLogradouro().equals("AVENIDA"));
		// COMPLETE NORMALIZATION
		assertTrue(e.getLogradouro().equals("AVENIDA RIO BRANCO"));
		assertTrue(e.getNumero().equals("156"));
		assertTrue(e.getComplemento().equals("SALA 1010"));
		assertTrue(e.getBairro().equals("CENTRO"));
		assertTrue(e.getCidade().equals("RIO DE JANEIRO"));
		assertTrue(e.getUf().equals(UF.RJ));
		assertTrue(e.getCep().equals("21.021-380"));
	}	
	
}

class EnderecoFormatterAdapter implements EnderecoFormatter{

	private String bairro;
	private Cep cep;
	private String cidade;
	private String complemento;
	private Logradouro logradouro;
	private String numero;
	private UF uf;

	public void setEndereco(Logradouro logradouro, String numero, String complemento, String bairro, Cep cep, UF uf, String cidade) {
		this.bairro = bairro;
		this.cep = cep;
		this.cidade = cidade;
		this.complemento = complemento;
		this.logradouro = logradouro;
		this.numero = numero;
		this.uf = uf;				
	}

	public String getEndereco(String... addresseeName) {
		String result = 
		logradouro.toString() + "\n" +
		numero + "  " + complemento + "  " + bairro + "\n" + 
		cep.toString() + "  " + uf.toString() + "  " + cidade;
		for (int i=addresseeName.length-1; i >= 0; i--){
			result = addresseeName[i] + "\n" + result;
		}		
		return result;			
	}

	@Override
	public String getEndereco(String addresseeName)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
}

class EnderecoNormalizerAdapter implements EnderecoNormalizer{
	public String normalizeBairro(String value) {
		return value;
	}

	public Cep normalizeCep(Cep value) {
		return value;
	}

	public String normalizeCidade(String value) {
		return value;
	}

	public String normalizeComplemento(String value) {
		return value;	
	}

	public String normalizeEndereco(Logradouro logradouro,
			String numero, String complemento, String bairro,
			Cep cep, UF uf, String cidade) {
        String result = normalizeLogradouro(logradouro).toString();
        try {
            // se for um n�mero usa uma v�gula
            Integer.parseInt(normalizeNumero(numero));
            result = result + ", " + normalizeNumero(numero); 
        } catch (Exception e) {
            // se n�o for, n�o usa v�rgula
            result = result + " " + normalizeNumero(numero);
        }
        // se tiver complemento entra no final
        if (normalizeComplemento(complemento).length() > 0) {
            result = result + ", " + normalizeComplemento(complemento);
        }
		result = result + ", " + normalizeBairro(bairro) + ", " + 
		normalizeCep(cep).toString() + ", " +
		getUf(uf).toString() + ", " + normalizeCidade(cidade);
        return result;			
	}

	public Logradouro normalizeLogradouro(Logradouro value) {
		return value;	
	}

	public String normalizeNumero(String value) {
		return "N�mero: " + value;
	}

	public UF getUf(UF value) {
		return value  ;
	}

	public String normalizePais(String value) {
		return value;
	}
}
