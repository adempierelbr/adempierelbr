/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.cce.beans;

import java.io.Serializable;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 * 		Assinatura
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Signature.java, v1.0 2012/05/21 3:47:28 PM, ralexsander Exp $
 */
@XStreamAlias ("Signature")
public class Signature implements Serializable
{
	@XStreamAsAttribute
	String xmlns;
	
	@XStreamAlias ("SignedInfo")
	SignedInfo signedInfo;
	
	@XStreamAlias ("SignatureValue")
	String signatureValue;
	
	@XStreamAlias ("KeyInfo")
	KeyInfo keyInfo;
	
	public class SignedInfo implements Serializable
	{
		@XStreamAlias ("CanonicalizationMethod")
		CanonicalizationMethod canonicalizationMethod;
		
		@XStreamAlias ("SignatureMethod")
		SignatureMethod signatureMethod;
		
		@XStreamAlias ("Reference")
		Reference reference;
	}	//	SignedInfo
	public class CanonicalizationMethod implements Serializable
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	CanonicalizationMethod
	public class SignatureMethod implements Serializable
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	SignatureMethod
	public class Reference implements Serializable
	{
		@XStreamAlias ("URI")
		@XStreamAsAttribute
		String uri;
		
		@XStreamAlias ("Transforms")
		Transforms transforms;

		@XStreamAlias ("DigestMethod")
		DigestMethod digestMethod;
		
		@XStreamAlias ("DigestValue")
		String digestValue;
	}	//	Reference
	public class Transforms implements Serializable
	{
		@XStreamAlias ("Transform")
		@XStreamImplicit (itemFieldName = "Transform")
		List<Transform> transform;
	}	//	Transforms
	public class Transform implements Serializable
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	Transform
	public class DigestMethod implements Serializable
	{
		@XStreamAlias ("Algorithm")
		@XStreamAsAttribute
		String algorithm;
	}	//	DigestMethod
	public class KeyInfo implements Serializable
	{
		@XStreamAlias ("X509Data")
		X509Data x509Data;
	}	//	KeyInfo
	public class X509Data implements Serializable
	{
		@XStreamAlias ("X509Certificate")
		String x509Certificate;
	}	//	X509Data
}	//	Signature
