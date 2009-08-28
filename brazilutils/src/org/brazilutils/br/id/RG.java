/**
 * 
 */
package org.brazilutils.br.id;

/**
 * @author Douglas Siviotti
 *
 */
public class RG {
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }

}
