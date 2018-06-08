package org.adempierelbr.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 		GTIN Code Validator
 * 	<br><br>
 * 	This class can validate the codes: 
 * 		<li>GTIN-8  (Legacy EAN-8);
 * 		<li>GTIN-12 (Legacy UPC);
 * 		<li>GTIN-13 (Legacy EAN-13);
 * 		<li>GTIN-14 (Legacy ITF-14);
 * 		<li>GSIN; and
 * 		<li>SSCC.
 * 	<br><br>
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GTINValidator.java, v1.0 2018/06/07 15:28:01 PM, ralexsander Exp $
 */
public class GTINValidator
{
	// 	Code Typess
	public static final String GTIN_8 	= "GTIN-8";
	public static final String GTIN_12 	= "GTIN-12";
	public static final String GTIN_13 	= "GTIN-13";
	public static final String GTIN_14 	= "GTIN-14";
	public static final String GSIN 		= "GSIN";
	public static final String SSCC 		= "SSCC";
	//	Error Messages
	public static final String ERROR_MSG_10 = "Unknown code";
	public static final String ERROR_MSG_11 = "Invalid check digit";
	public static final String ERROR_MSG_12 = "Invalid GS1 code";
	public static final String ERROR_MSG_13 = "Restricted GS1 code";
	//	Error Codes
	public static final String ERROR_CODE_10 = "10";
	public static final String ERROR_CODE_11 = "11";
	public static final String ERROR_CODE_12 = "12";
	public static final String ERROR_CODE_13 = "13";
	
	private String gtin 		= null;
	private String codeType	= null;
	private Boolean valid 	= null;
	private GS1 validGS1 	= null;
	private String errorMsg 	= null;
	private String errorCode	= null;
	
	/**
	 * 	GTIN Default constructor
	 */
	public GTINValidator (){}
	
	/**
	 * 	GTIN Constructor
	 * 	@param GTIN code
	 */
	public GTINValidator (String gtin)
	{
		setGTIN (gtin);
	}	//	GTINValidator
	
	/**
	 * 	Set GTIN for validation
	 * 	@param gtin
	 */
	public GTINValidator setGTIN (String gtin)
	{
		this.gtin 		= gtin;
		
		//	Force validation again
		this.codeType 	= null;
		this.valid 		= null;
		this.validGS1 	= null;
		this.errorCode 	= null;
		this.errorMsg 	= null;
		return this;
	}	//	setGTIN
	
	/**
	 * 	Returns the error code, if any. Possible errors:<br><br>
	 * 	<li>10 - Unknown code
	 * 	<li>11 - Invalid check digit
	 * 	<li>12 - Invalid/Restricted GS1 code<br><br>
	 * 	@return Error message or ""
	 */
	public String getErrorCode ()
	{
		if (errorCode != null)
			return errorCode;
		return "";
	}	//	getErrorCode
	
	/**
	 * 	Returns the error message, if any. Possible errors:<br><br>
	 * 	<li>10 - Unknown code
	 * 	<li>11 - Invalid check digit
	 * 	<li>12 - Invalid GS1 code<br><br>
	 * 	<li>13 - Restricted GS1 code<br><br>
	 * 	@return Error message or ""
	 */
	public String getErrorMsg ()
	{
		if (errorMsg != null)
			return errorMsg;
		return "";
	}	//	getErrorMsg
	
	/**
	 * 	Returns the GS1 reserved range name, if any.
	 * 	@return GS1 reserved range name or ""
	 */
	public String getRangeName ()
	{
		if (validGS1 != null)
			return validGS1.getRangeName();
		return "";
	}	//	getRangeName
	
	/**
	 * 	Returns the Code Type. Possible types:<br><br>
	 * 		<li>GTIN-8  (Legacy EAN-8);
	 * 		<li>GTIN-12 (Legacy UPC);
	 * 		<li>GTIN-13 (Legacy EAN-13);
	 * 		<li>GTIN-14 (Legacy ITF-14);
	 * 		<li>GSIN; and
	 * 		<li>SSCC.<br><br>
	 * 	@return Code Type or "" if error
	 */
	public String getCodeType ()
	{
		if (codeType != null)
			return codeType;
		return "";
	}	//	getCodeType
	
	/**
	 * 	Check if the GTIN code is valid, the value will be trimmed before validation
	 * 	@return true if is valid
	 */
	public boolean isValid ()
	{
		return isValid (true, true, false);
	}	//	isValid
	
	/**
	 * 	Check if the GTIN code is valid
	 * 	How to test: https://www.gs1.org/services/how-calculate-check-digit-manually
	 * 
	 * 	@param trimFirst Indicates if the code should be trimmed before validation
	 * 	@param checkGS1 Indicates if the GS1 will be validate (if it belongs to a country or has internal/restricted use)
	 * 	@return true if is valid
	 */
	public boolean isValid (boolean trimFirst, boolean checkGS1, boolean failRestrictedGS1)
	{
		//	Already validated
		if (valid != null)
			return valid;
		
		//	Start validation
		valid = false;
		String code = null;
		
		//	Trim
		if (trimFirst)
			code = TextUtil.toNumeric (gtin);
		else
			code = gtin;
		
		int codeLength = code.length();
		
		//	GTIN-12	-> Legacy UPC
		if (codeLength == 12)
			this.codeType = GTIN_12;
		
		//	GTIN-13	-> Legacy EAN-13
		else if (codeLength == 13)
			this.codeType = GTIN_13;
		
		//	GTIN-14	-> Legacy ITF-14
		else if (codeLength == 14)
			this.codeType = GTIN_14;
		
		//	GTIN-8	-> Legacy EAN-8
		else if (codeLength == 8)
			this.codeType = GTIN_8;
		
		//	GSIN
		else if (codeLength == 17)
		{
			this.codeType = GSIN;
			checkGS1 = false; 		//	TODO
		}
		
		//	SSCC
		else if (codeLength == 18)
		{
			this.codeType = SSCC;
			checkGS1 = false; 		//	TODO
		}
		
		//	Unknown code
		else
		{
			this.errorCode 	= ERROR_CODE_10;
			this.errorMsg 	= ERROR_MSG_10;
			//
			return false;				//	Invalid size, skip testing
		}
		
		//	For odd codes start multiplier should be 1
		int multiplier = 1;
		int sum = 0;
		
		//	For even codes start multiplier should be 3
		if (codeLength % 2 == 0)
			multiplier = 3;
		try
		{
			//	Scan the code, skip the last digit
			for (int i=0; i < codeLength-1; i++)
			{
				int digit = Integer.parseInt (String.valueOf (code.charAt (i)));
			
				//	Sum
				sum += digit * multiplier;
				
				//	Next multiplier
				if (multiplier == 1)
					multiplier = 3;
				else
					multiplier = 1;
			}
			
			//	Digit to be validated
			int digit = getCheckDigit ();
			
			//	Calculated digit
			int calculated = ((sum % 10) == 0 ? sum : ((sum / 10) * 10 + 10)) - sum;
			
			//	Code is valid?
			if (digit == calculated)
			{
				if (checkGS1)
				{
					int gs1Code = getGS1();
					//
					GS1 gs1 = GS1.get(gs1Code);
					if (gs1 != null)
					{
						if (gs1.isCountryRange() || !failRestrictedGS1)
						{
							this.validGS1 = gs1;
							this.valid = true;
						}
						else
						{
							this.errorCode 	= ERROR_CODE_13;
							this.errorMsg 	= ERROR_MSG_13;
						}
					}
					//	Invalid GS1 code
					else
					{
						this.errorCode 	= ERROR_CODE_12;
						this.errorMsg 	= ERROR_MSG_12;
					}
				}
				else
					this.valid = true;
			}
			//	Invalid check digit
			else
			{
				this.errorCode 	= ERROR_CODE_11;
				this.errorMsg 	= ERROR_MSG_11;
			}
		}
		catch (Exception e)
		{
			return false;
		}
		return valid;
	}	//	isValid

	/**
	 * 	Return the GS1 Code
	 * 	@return returns the GS1 code
	 */
	private int getGS1 ()
	{
		String code = TextUtil.lPad (this.gtin, 14);
		String gs1 = null;
		if (code.startsWith (TextUtil.lPad (0, 6)))	//	GTIN-8
			gs1 = code.substring (6, 9);
		else
			gs1 = code.substring (1, 4);
		//
		return Integer.parseInt (gs1);
	}	//	getDigit

	/**
	 * 	Return the GTIN Check Digit
	 * 	@return returns the GTIN check digit
	 */
	private int getCheckDigit ()
	{
		return Integer.parseInt (String.valueOf (gtin.charAt (gtin.length()-1)));
	}	//	getDigit
	
	public static void main (String[] args)
	{
		GTINValidator validation = new GTINValidator();
		
		List<String> list = new ArrayList<String>();
		list.add("7898649191950");	//	Valid GTIN-13
		list.add("17898649191957");	//	Valid GTIN-14
		list.add("78986587506");		//	Invalid size
		list.add("7898699191950");	//	Invalid check digit
		list.add("7918948881502");	//	Invalid GS1
		list.add("6291041500213");	//	Valid
		list.add("9501041500210");	//	Restricted use
		
		for (String code : list)
		{
			System.out.println ("===================================================");
			System.out.println ("Code ----------> " + code);
			boolean isValid = validation.setGTIN(code).isValid(false, true, true);
			System.out.println ("Valid ---------> " + isValid);
			//
			if (isValid)
			{
				System.out.println ("Type ----------> " + validation.getCodeType());
				System.out.println ("Region --------> " + validation.getRangeName());
			}
			else
			{
				System.out.println ("Error Code ----> " + validation.getErrorCode());
				System.out.println ("Error Message--> " + validation.getErrorMsg());
			}
		}
	} 
}	//	GTINValidator

/**
 * 	GS1 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
class GS1
{
	/**
	 * 	Constructor
	 * 
	 * @param rangeFrom Initial number of the range, inclusive
	 * @param rangeTo Final number of the range, inclusive
	 * @param countryRange Country range or Special use
	 * @param rangeName Name of the range
	 */
	public GS1 (int rangeFrom, int rangeTo, boolean countryRange, String rangeName)
	{
		this.rangeFrom 		= rangeFrom;
		this.rangeTo 		= rangeTo;
		this.countryRange 	= countryRange;
		this.rangeName 		= rangeName;
	}	//	GS1

	int rangeFrom;
	int rangeTo;
	boolean countryRange;
	String rangeName;
	
	/**
	 * 	Check if code is in range
	 * 	@param code
	 * 	@return true if its in range
	 */
	public boolean isInRange (int code)
	{
		if (Math.max (rangeFrom, code) == Math.min (code, rangeTo))
			return true;
		return false;
	}	//	isInRange

	/**
	 * 	Indicates if this range is reserved to 
	 * 		a country or if it has restricted/internal use
	 * 	@return true if it's a country's range
	 */
	public boolean isCountryRange()
	{
		return countryRange;
	}	//	isCountryRange
	
	/**
	 * 	Range Name
	 * 	@return range name
	 */
	public String getRangeName()
	{
		return rangeName;
	}	//	getRangeName
	
	/**
	 * 	Representation of this instance
	 */
	@Override
	public String toString()
	{
		return "[" + TextUtil.lPad(rangeFrom, 3) + ", " + TextUtil.lPad(rangeTo, 3) + ", " + rangeName + "]";
	}	//	toString
	
	/**
	 * 	Try to find the respecgive GS1 reservation range based on the GS1 code
	 * 	@param gs1Code 1 to 3 digits code
	 * 	@return GS1 record, with range and description null if not found
	 */
	public static GS1 get (int gs1Code)
	{
		for (GS1 gs1 : _GS1)
		{
			//	Found a valid range
			if (gs1.isInRange (gs1Code))
				return gs1;
		}
		return null;
	}	//	get
	
	static final List<GS1> _GS1 = new ArrayList<GS1>()
	{{
		//	Most used first
		add (new GS1 (789, 790, true,  "GS1 Brasil"));
		//
		add (new GS1 (0,   19,  true,  "GS1 US"));
		add (new GS1 (20,  29,  false, "Used to issue restricted circulation numbers within a geographic region (MO defined)"));
		add (new GS1 (30,  39,  true,  "GS1 US"));
		add (new GS1 (40,  49,  false, "Used to issue GS1 restricted circulation numbers within a company"));
		add (new GS1 (50,  59,  false, "GS1 US reserved for future use"));
		add (new GS1 (60,  139, true,  "GS1 US"));
		add (new GS1 (200, 299, false, "Used to issue GS1 restricted circulation number within a geographic region (MO defined)"));
		add (new GS1 (300, 379, true,  "GS1 France"));
		add (new GS1 (380, 380, true,  "GS1 Bulgaria"));
		add (new GS1 (383, 383, true,  "GS1 Slovenija"));
		add (new GS1 (385, 385, true,  "GS1 Croatia"));
		add (new GS1 (387, 387, true,  "GS1 BIH (Bosnia-Herzegovina)"));
		add (new GS1 (389, 389, true,  "GS1 Montenegro"));
		add (new GS1 (400, 440, true,  "GS1 Germany"));
		add (new GS1 (450, 459, true,  "GS1 Japan"));
		add (new GS1 (460, 469, true,  "GS1 Russia"));
		add (new GS1 (470, 470, true,  "GS1 Kyrgyzstan"));
		add (new GS1 (471, 471, true,  "GS1 Chinese Taipei"));
		add (new GS1 (474, 474, true,  "GS1 Estonia"));
		add (new GS1 (475, 475, true,  "GS1 Latvia"));
		add (new GS1 (476, 476, true,  "GS1 Azerbaijan"));
		add (new GS1 (477, 477, true,  "GS1 Lithuania"));
		add (new GS1 (478, 478, true,  "GS1 Uzbekistan"));
		add (new GS1 (479, 479, true,  "GS1 Sri Lanka"));
		add (new GS1 (480, 480, true,  "GS1 Philippines"));
		add (new GS1 (481, 481, true,  "GS1 Belarus"));
		add (new GS1 (482, 482, true,  "GS1 Ukraine"));
		add (new GS1 (483, 483, true,  "GS1 Turkmenistan"));
		add (new GS1 (484, 484, true,  "GS1 Moldova"));
		add (new GS1 (485, 485, true,  "GS1 Armenia"));
		add (new GS1 (486, 486, true,  "GS1 Georgia"));
		add (new GS1 (487, 487, true,  "GS1 Kazakstan"));
		add (new GS1 (488, 488, true,  "GS1 Tajikistan"));
		add (new GS1 (489, 489, true,  "GS1 Hong Kong, China"));
		add (new GS1 (490, 499, true,  "GS1 Japan"));
		add (new GS1 (500, 509, true,  "GS1 UK"));
		add (new GS1 (520, 521, true,  "GS1 Association Greece"));
		add (new GS1 (528, 528, true,  "GS1 Lebanon"));
		add (new GS1 (529, 529, true,  "GS1 Cyprus"));
		add (new GS1 (530, 530, true,  "GS1 Albania"));
		add (new GS1 (531, 531, true,  "GS1 Macedonia"));
		add (new GS1 (535, 535, true,  "GS1 Malta"));
		add (new GS1 (539, 539, true,  "GS1 Ireland"));
		add (new GS1 (540, 549, true,  "GS1 Belgium & Luxembourg"));
		add (new GS1 (560, 560, true,  "GS1 Portugal"));
		add (new GS1 (569, 569, true,  "GS1 Iceland"));
		add (new GS1 (570, 579, true,  "GS1 Denmark"));
		add (new GS1 (590, 590, true,  "GS1 Poland"));
		add (new GS1 (594, 594, true,  "GS1 Romania"));
		add (new GS1 (599, 599, true,  "GS1 Hungary"));
		add (new GS1 (600, 601, true,  "GS1 South Africa"));
		add (new GS1 (603, 603, true,  "GS1 Ghana"));
		add (new GS1 (604, 604, true,  "GS1 Senegal"));
		add (new GS1 (608, 608, true,  "GS1 Bahrain"));
		add (new GS1 (609, 609, true,  "GS1 Mauritius"));
		add (new GS1 (611, 611, true,  "GS1 Morocco"));
		add (new GS1 (613, 613, true,  "GS1 Algeria"));
		add (new GS1 (615, 615, true,  "GS1 Nigeria"));
		add (new GS1 (616, 616, true,  "GS1 Kenya"));
		add (new GS1 (618, 618, true,  "GS1 Ivory Coast"));
		add (new GS1 (619, 619, true,  "GS1 Tunisia"));
		add (new GS1 (620, 620, true,  "GS1 Tanzania"));
		add (new GS1 (621, 621, true,  "GS1 Syria"));
		add (new GS1 (622, 622, true,  "GS1 Egypt"));
		add (new GS1 (623, 623, true,  "GS1 Brunei"));
		add (new GS1 (624, 624, true,  "GS1 Libya"));
		add (new GS1 (625, 625, true,  "GS1 Jordan"));
		add (new GS1 (626, 626, true,  "GS1 Iran"));
		add (new GS1 (627, 627, true,  "GS1 Kuwait"));
		add (new GS1 (628, 628, true,  "GS1 Saudi Arabia"));
		add (new GS1 (629, 629, true,  "GS1 Emirates"));
		add (new GS1 (640, 649, true,  "GS1 Finland"));
		add (new GS1 (690, 699, true,  "GS1 China"));
		add (new GS1 (700, 709, true,  "GS1 Norway"));
		add (new GS1 (729, 729, true,  "GS1 Israel"));
		add (new GS1 (730, 739, true,  "GS1 Sweden"));
		add (new GS1 (740, 740, true,  "GS1 Guatemala"));
		add (new GS1 (741, 741, true,  "GS1 El Salvador"));
		add (new GS1 (742, 742, true,  "GS1 Honduras"));
		add (new GS1 (743, 743, true,  "GS1 Nicaragua"));
		add (new GS1 (744, 744, true,  "GS1 Costa Rica"));
		add (new GS1 (745, 745, true,  "GS1 Panama"));
		add (new GS1 (746, 746, true,  "GS1 Republica Dominicana"));
		add (new GS1 (750, 750, true,  "GS1 Mexico"));
		add (new GS1 (754, 755, true,  "GS1 Canada"));
		add (new GS1 (759, 759, true,  "GS1 Venezuela"));
		add (new GS1 (760, 769, true,  "GS1 Schweiz, Suisse, Svizzera"));
		add (new GS1 (770, 771, true,  "GS1 Colombia"));
		add (new GS1 (773, 773, true,  "GS1 Uruguay"));
		add (new GS1 (775, 775, true,  "GS1 Peru"));
		add (new GS1 (777, 777, true,  "GS1 Bolivia"));
		add (new GS1 (778, 779, true,  "GS1 Argentina"));
		add (new GS1 (780, 780, true,  "GS1 Chile"));
		add (new GS1 (784, 784, true,  "GS1 Paraguay"));
		add (new GS1 (786, 786, true,  "GS1 Ecuador"));
//		add (new GS1 (789, 790, true,  "GS1 Brasil"));
		add (new GS1 (800, 839, true,  "GS1 Italy"));
		add (new GS1 (840, 849, true,  "GS1 Spain"));
		add (new GS1 (850, 850, true,  "GS1 Cuba"));
		add (new GS1 (858, 858, true,  "GS1 Slovakia"));
		add (new GS1 (859, 859, true,  "GS1 Czech"));
		add (new GS1 (860, 860, true,  "GS1 Serbia"));
		add (new GS1 (865, 865, true,  "GS1 Mongolia"));
		add (new GS1 (867, 867, true,  "GS1 North Korea"));
		add (new GS1 (868, 869, true,  "GS1 Turkey"));
		add (new GS1 (870, 879, true,  "GS1 Netherlands"));
		add (new GS1 (880, 880, true,  "GS1 South Korea"));
		add (new GS1 (884, 884, true,  "GS1 Cambodia"));
		add (new GS1 (885, 885, true,  "GS1 Thailand"));
		add (new GS1 (888, 888, true,  "GS1 Singapore"));
		add (new GS1 (890, 890, true,  "GS1 India"));
		add (new GS1 (893, 893, true,  "GS1 Vietnam"));
		add (new GS1 (896, 896, true,  "GS1 Pakistan"));
		add (new GS1 (899, 899, true,  "GS1 Indonesia"));
		add (new GS1 (900, 919, true,  "GS1 Austria"));
		add (new GS1 (930, 939, true,  "GS1 Australia"));
		add (new GS1 (940, 949, true,  "GS1 New Zealand"));
		add (new GS1 (950, 950, false, "GS1 Global Office"));
		add (new GS1 (951, 951, false, "Global Office"));
		add (new GS1 (955, 955, true,  "GS1 Malaysia"));
		add (new GS1 (958, 958, true,  "GS1 Macau, China"));
		add (new GS1 (960, 969, false, "Global Office"));
		add (new GS1 (977, 977, false, "Serial publications (ISSN)"));
		add (new GS1 (978, 979, false, "Bookland (ISBN)"));
		add (new GS1 (980, 980, false, "Refund receipts"));
		add (new GS1 (981, 984, false, "GS1 coupon identification for common currency areas"));
		add (new GS1 (990, 999, false, "GS1 coupon identification"));
	}};
}	//	GS1
