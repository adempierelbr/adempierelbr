/**
 * 
 */
package org.brazilutils.br.telefone;

/**Telefone Mask List.<br>
 * <pre>
 *    --------------------> DDI - International Code
 *    |   ----------------> DDD - Regional Code
 *    |   |      ---------> Base - Phone Number
 *    |   |      | 
 *   --  ---  ------- 
 *  |  ||   ||       | 
 *  +145(032)2435-9857
 *  |   |   |    |
 *  |   |   |    |
 *  |   |   |    ---------> Base Separator - default "-"
 *  |   |   --------------> DDD End - default "("
 *  |   ------------------> DDD Begin - default ")"
 *  ----------------------> DDI Signal - default "+"
 * </pre>
 * @author Douglas Siviotti
 *
 */
public final class TelMask {
	/** Simple Brazilian Format (##)####-#### */
	public static final TelMask BrazilianDDD = new TelMask("(##)####-####");
	/**Default Format +###(###)####-####*/
	public static final TelMask DefaultFormat = new TelMask("+**#(*##)*###-####");
	/***Local Format, no codes.	 */
	public static final TelMask LocalFormat = new TelMask("*###-####");
	/**None format. */
	public static final TelMask NullFormat = new TelMask("");
	
	private String mask;

	/**
	 * @param memberCount
	 */
	private TelMask(String mask){
		this.mask = mask;
	}
	public String getMask(){
		return mask;
	}
	/**
	 * @see java.lang.Enum#toString()
	 */
	public String toString() {
		return mask;
	}
	
}
