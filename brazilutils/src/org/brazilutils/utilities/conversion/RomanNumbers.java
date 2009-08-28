/*
 * Created on 26/05/2005
 */
package org.brazilutils.utilities.conversion;

/**
 * @author Marvin Herman Froeder
 */
public final class RomanNumbers {

    private static RomanNumbers instance;

    private RomanNumbers() {

    }

    public String IntToRoman(int value) {
        String roman = "";
        if (value == 0)
            return "";

        if (value < 0)
            throw new IllegalArgumentException(
                    "Impossivel criar numero romano menor que 0.");

        if (value <= 3999) {
            while (value / 1000 >= 1) {
                roman += "M";
                value = value - 1000;
            }
            if (value / 900 >= 1) {
                roman += "CM";
                value = value - 900;
            }
            if (value / 500 >= 1) {
                roman += "D";
                value = value - 500;
            }
            if (value / 400 >= 1) {
                roman += "CD";
                value = value - 400;
            }
            while (value / 100 >= 1) {
                roman += "C";
                value = value - 100;
            }
            if (value / 90 >= 1) {
                roman += "XC";
                value = value - 90;
            }
            if (value / 50 >= 1) {
                roman += "L";
                value = value - 50;
            }
            if (value / 40 >= 1) {
                roman += "XL";
                value = value - 40;
            }
            while (value / 10 >= 1) {
                roman += "X";
                value = value - 10;
            }
            if (value / 9 >= 1) {
                roman += "IX";
                value = value - 9;
            }
            if (value / 5 >= 1) {
                roman += "V";
                value = value - 5;
            }
            if (value / 4 >= 1) {
                roman += "IV";
                value = value - 4;
            }
            while (value >= 1) {
                roman += "I";
                value = value - 1;
            }
            return roman;

        } else {
            throw new IllegalArgumentException(
                    "Impossivel criar numero romano maior que 3999.");
        }
    }

    /**
     * @return Returns the instance.
     */
    public static RomanNumbers getInstance() {
        if (instance == null)
            instance = new RomanNumbers();
        return instance;
    }

    public int RomanToInt(String roman) {
        if (this.validate(roman)) {
            char[] chars = roman.toCharArray();
            char lastChar = ' ';
            int value = 0;

            for (int i = chars.length - 1; i >= 0; i--) {
                switch (chars[i]) {
                case 'I':
                    if (lastChar == 'X' || lastChar == 'V')
                        value -= 1;
                    else
                        value += 1;
                    break;
                case 'V':
                    value += 5;
                    break;
                case 'X':
                    if (lastChar == 'C' || lastChar == 'L')
                        value -= 10;
                    else
                        value += 10;
                    break;
                case 'L':
                    value += 50;
                    break;
                case 'C':
                    if (lastChar == 'M' || lastChar == 'D')
                        value -= 100;
                    else
                        value += 100;
                    break;
                case 'D':
                    value += 500;
                    break;
                case 'M':
                    value += 1000;
                    break;
                }
                lastChar = chars[i];
            }
            return value;
        } else
            throw new IllegalArgumentException("Numero recebido inválido!");
    }

    public boolean validate(String roman) {
        char[] chars = roman.toCharArray();
        char lastChar;

        for (int i = 0; i < chars.length; i++) {
            if (Character.isLowerCase(chars[i]))
                return false;
            if (chars[i] != 'I' && chars[i] != 'V' && chars[i] != 'X'
                    && chars[i] != 'L' && chars[i] != 'C' && chars[i] != 'D'
                    && chars[i] != 'M')
                return false;
        }

        return true;
    }
}
