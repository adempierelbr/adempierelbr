/*
 * Created on 23/04/2005
 */
package org.brazilutils.metrics;

/**
 * @author D�Artagnan Ramos Dias Neto
 */

public class Temperature {

    /**
     * Comment for <code>ABSOLUTE_ZERO</code>Zero absoluto ou Zero Kevin.
     * Temperatura em �C. Conforme ITS-90.
     */
    public static final double ABSOLUTE_ZERO = -273.15;

    /**
     * Comment for <code>OXYGEN_BOILING</code>Ebuli��o do Oxig�nio.
     * Temperatura em �C. Conforme ITS-90.
     */
    public static final double OXYGEN_BOILING = -182.954;

    /**
     * Comment for <code>WATER_TRIPLE_POINT</code>Ponto Triplo da �gua.
     * Temperatura em �C. Conforme ITS-90.
     */
    public static final double WATER_TRIPLE_POINT = 0.010;

    /**
     * Comment for <code>STANNUM_SOLIDIFICATION</code>Solidifica��o do
     * Estanho. Temperatura em �C. Conforme ITS-90.
     */
    public static final double STANNUM_SOLIDIFICATION = +231.928;

    /**
     * Comment for <code>ZINC_SOLIDIFICATION</code>Solidifica��o do Zinco.
     * Temperatura em �C. Conforme ITS-90.
     */
    public static final double ZINC_SOLIDIFICATION = +419.527;

    /**
     * Comment for <code>ARGENTUM_SOLIDIFICATION</code>Solidifica��o do
     * Prata. Temperatura em �C. Conforme ITS-90.
     */
    public static final double ARGENTUM_SOLIDIFICATION = +961.780;

    /**
     * Comment for <code>AURUM_SOLIDIFICATION</code>Solidifica��o do Ouro.
     * Temperatura em �C. Conforme ITS-90.
     */
    public static final double AURUM_SOLIDIFICATION = +1064.180;

    public Temperature() {

    }

    /**
     * @param celsius
     * @return double
     */
    public double CelsiusToKelvin(double celsius) {
        double result = celsius + 273.15;
        return result;
    }

    /**
     * @param kelvin
     * @return double
     */
    public double KelvinToCelsius(double kelvin) {
        double result = kelvin - 273.15;
        return result;
    }

    /**
     * @param celsius
     * @return
     */
    public double CelsiusToFarenheit(double celsius) {
        double result = (celsius * 9 / 5) + 32;
        return result;
    }

    /**
     * @param kelvin
     * @return
     */
    public double KelvinToFarenheit(double kelvin) {
        double result = this.CelsiusToFarenheit(this.KelvinToCelsius(kelvin));
        return result;
    }

    /**
     * @param farenheit
     * @return
     */
    public double FarenheitToCelsius(double farenheit) {
        double result = (farenheit - 32) * 5 / 9;
        return result;
    }

    /**
     * @param farenheit
     * @return
     */
    public double FarenheitToKelvin(double farenheit) {
        double result = this
                .CelsiusToKelvin(this.FarenheitToCelsius(farenheit));
        return result;
    }

    /**
     * @param rankine
     * @return
     */
    public double RankineToFarenheit(double rankine) {
        double result = rankine - 459.67;
        return result;
    }

    /**
     * @param farenheit
     * @return
     */
    public double FarenheitToRankine(double farenheit) {
        double result = farenheit + 459.67;
        return result;
    }

    /**
     * @param reamur
     * @return
     */
    public double ReamurToCelsius(double reamur) {
        double result = reamur * 5 / 4;
        return result;
    }

    /**
     * @param celsius
     * @return
     */
    public double CelsiusToReamur(double celsius) {
        double result = celsius * 4 / 5;
        return result;
    }

}
