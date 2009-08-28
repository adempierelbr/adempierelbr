/**
 * 
 */
package org.brazilutils.br.id;

/**
 * @author Douglas Siviotti
 *
 */
public interface ComposedId {
	
	/**Returns only the Main Number<br>
	 * @return
	 */
	public String getNumber();
	
	/**Returns the Main Number and others members.<br>
	 * toString must returns getValue().<br>
	 * @return
	 */
	public String getValue();
	
	/**Returns the Id Mask.<br>
	 * Based on MaskFormatter<br>
	 * @return
	 */
	public String getMask();

}
