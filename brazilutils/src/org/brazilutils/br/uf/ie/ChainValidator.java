/**
 * 
 */
package org.brazilutils.br.uf.ie;

/**
 * @author Rafael Fiume
 *
 */
public interface ChainValidator {

	void addValidator(ChainValidator nextValidator);
	
	boolean validate(String inscricaoEstadual);
}
