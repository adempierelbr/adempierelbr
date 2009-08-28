/**
 * 
 */
package org.brazilutils.br.telefone;

import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JFormattedTextField;
import javax.swing.text.MaskFormatter;

/**
 * Represents the Telefone Mask Formatter.
 * <P>
 * <b>Members:</b>
 * <p>
 * DDI - International Code - 1 to 3 Characters: Opitional
 * <P>
 * DDD - Regional Code - 2 to 3 Characters: Opitional
 * <P>
 * BASE - Phone Number - 7 to 8 Characters: Required
 * <P>
 * The members are separed by "(" and ")" like this:<br>
 * DDI(DDD)BASE -> +145(032)2435-9857
 * <p>
 * <b>Valid Characters: # * + ( ) - </b><br>
 * 
 * <pre>
 * Digits:
 *  #  For numeric digits. Character.isDigit().
 *  *  For Anything, including space.
 *  
 * Tags/Separators: 
 *  +  For DDI signal.
 *  (  For DDD begin tag.
 *  )  For ddd end tag.
 *  -  For base number separator.
 *  
 * </pre>
 * 
 * <P>
 * 
 * <pre>
 * 
 *     --------------------&gt; DDI - International Code
 *     |   ----------------&gt; DDD - Regional Code
 *     |   |      ---------&gt; Base - Phone Number
 *     |   |      | 
 *    --  ---  ------- 
 *   |  ||   ||       | 
 *   +145(032)2435-9857
 *   |   |   |    |
 *   |   |   |    |
 *   |   |   |    ---------&gt; Base Separator - default &quot;-&quot;
 *   |   |   --------------&gt; DDD End - default &quot;(&quot;
 *   |   ------------------&gt; DDD Begin - default &quot;)&quot;
 *   ----------------------&gt; DDI Signal - default &quot;+&quot;
 *  
 * </pre>
 * 
 * @author Douglas Siviotti
 */
public class TelFormatter {
    private static final char ANY_DIGIT = '*';

    private static JFormattedTextField jFormattedTextField = null;

    private static MaskFormatter maskFormatter = null;

    private static final char TEL_DIGIT = '#';

    /**
     * Convert a Tel Number to a equivalent Mask.
     * <P>
     * 
     * @param tel
     * @return
     */
    public static String extractMask(String tel) {
        // Digits become #
        String result = tel.replaceAll("[0-9]", "#");
        // Space become *
        result = result.replaceAll(" ", "*");
        return result;
    }

    /**
     * Apply the mask on Value.
     * <P>
     * 
     * @param value
     * @param mask
     * @return
     */
    public static String format(String value, String mask) {
        try {
            maskFormatter = new MaskFormatter(mask);
            jFormattedTextField = new JFormattedTextField(maskFormatter);
        } catch (ParseException e) {
            e.printStackTrace();
            return value;
        }
        jFormattedTextField.setText(value);
        return jFormattedTextField.getText();
    }

    private String baseMask;

    private String dddMask;

    private String ddiMask;

    private int memberCount;

    /**
     * @see org.brazilutils.br.telefone.TelFormatter#setFormat(String)
     */
    public TelFormatter(String mask) {
        setFormat(mask);
    }

    /**
     * @return
     */
    public int baseCount() {
        return digitCount(baseMask);
    }

    /**
     * @return
     */
    public int dddCount() {
        return digitCount(dddMask);
    }

    /**
     * @return
     */
    public int ddiCount() {
        return digitCount(ddiMask);
    }

    public int digitCount(String mask) {
        int result = 0;
        for (int i = 0; i < mask.length(); i++) {
            if (mask.charAt(i) == TEL_DIGIT || 
                mask.charAt(i) == ANY_DIGIT)
                result++;
        }
        return result;
    }

    /**
     * Returns the Formatted Base
     * 
     * @param base
     *            Unformatted base
     * @return Formatted Base
     */
    public String formatBase(String base) {
        return format(base, baseMask);
    }

    /**
     * Returns the Formatted DDD
     * 
     * @param ddd
     *            the Unformatted DDD
     * @return the Formatted DDD
     */
    public String formatDdd(String ddd) {
        return format(ddd, dddMask);
    }

    /**
     * Returns the Formatted DDI
     * 
     * @param ddd
     *            the Unformatted DDI
     * @return the Formatted DDI
     */
    public String formatDdi(String ddi) {
        return format(ddi, ddiMask);
    }

    /**
     * @return Returns the baseMask.
     */
    public String getBaseMask() {
        return baseMask;
    }

    /**
     * @return Returns the dddMask.
     */
    public String getDddMask() {
        return dddMask;
    }

    /**
     * @return Returns the ddiMask.
     */
    public String getDdiMask() {
        return ddiMask;
    }

    public String getMask() {
        return ddiMask + dddMask + baseMask;
    }

    /**
     * @return Returns the memberCount.
     */
    public int getMemberCount() {
        return memberCount;
    }

    /**
     * @param baseMask
     *            The baseMask to set.
     */
    public void setBaseMask(String baseMask) {
        this.baseMask = baseMask;
    }

    /**
     * @param dddMask
     *            The dddMask to set.
     */
    public void setDddMask(String dddMask) {
        this.dddMask = dddMask;
    }

    /**
     * @param ddiMask
     *            The ddiMask to set.
     */
    public void setDdiMask(String ddiMask) {
        this.ddiMask = ddiMask;
    }

    /**
     * Set the Telefone Format, use "(" and ")" for separate the members -
     * DDI(DDD)BASE. Without "(" and ")" the format will have only 1 member
     * (BASE).
     * 
     * @param mask
     */
    public void setFormat(String mask) {
        mask = mask.replaceAll("[^#,*,\\+,\\(,\\),\\-, ]", "");
        // Empty or null mask
        if (mask == null || mask.length() == 0) {
            ddiMask = "";
            dddMask = "";
            baseMask = "";
            memberCount = 0;
        // Valid String in mask
        } else {
            Pattern p = Pattern.compile("\\(.+\\)");
            Matcher m = p.matcher(mask);
            // Delimited by ()
            if (m.find()) {
                ddiMask = mask.replaceAll("\\(.*", "");
                dddMask = m.group();
                baseMask = mask.replaceAll(".*\\)", "");
                if (ddiMask.length() > 0)
                    memberCount = 3;
                else
                    memberCount = 2;
            // Only Base Member
            } else {
                ddiMask = "";
                dddMask = "";
                baseMask = mask;
                memberCount = 1;
            }
        }
    }
}
