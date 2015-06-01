/**
 * NfeRetAutorizacaoStub.java This file was auto-generated from WSDL by the
 * Apache Axis2 version: 1.6.2 Built on : Apr 17, 2012 (05:33:49 IST)
 */
package org.adempierelbr.nfe.api;

/*
 * NfeRetAutorizacaoStub java implementation
 */

public class NfeRetAutorizacaoStub extends org.apache.axis2.client.Stub implements
		NfeRetAutorizacao
{
	protected org.apache.axis2.description.AxisOperation[] _operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
	private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
	private java.util.HashMap faultMessageMap = new java.util.HashMap();

	private static int counter = 0;

	private static String stubAddress = "";

	public static void setAmbiente(String ws)
	{
		stubAddress = ws;
	}

	private static synchronized java.lang.String getUniqueSuffix()
	{
		// reset the counter if it is greater than 99999
		if (counter > 99999)
		{
			counter = 0;
		}
		counter = counter + 1;
		return java.lang.Long.toString(java.lang.System.currentTimeMillis()) + "_"
				+ counter;
	}

	private void populateAxisService() throws org.apache.axis2.AxisFault
	{

		// creating the Service with a unique name
		_service = new org.apache.axis2.description.AxisService("NfeRetAutorizacao"
				+ getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation __operation;

		_operations = new org.apache.axis2.description.AxisOperation[1];

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.portalfiscal.inf.br/nfe/wsdl/NfeRetAutorizacao",
				"nfeRetAutorizacaoLote"));
		_service.addOperation(__operation);

		_operations[0] = __operation;

	}

	// populates the faults
	private void populateFaults()
	{

	}

	/**
	 * Constructor that takes in a configContext
	 */

	public NfeRetAutorizacaoStub(
			org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault
	{
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public NfeRetAutorizacaoStub(
			org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint, boolean useSeparateListener)
			throws org.apache.axis2.AxisFault
	{
		// To populate AxisService
		populateAxisService();
		populateFaults();

		_serviceClient = new org.apache.axis2.client.ServiceClient(
				configurationContext, _service);

		_serviceClient.getOptions().setTo(
				new org.apache.axis2.addressing.EndpointReference(targetEndpoint));
		_serviceClient.getOptions().setUseSeparateListener(useSeparateListener);

		// Set the soap version
		_serviceClient.getOptions().setSoapVersionURI(
				org.apache.axiom.soap.SOAP12Constants.SOAP_ENVELOPE_NAMESPACE_URI);

	}

	/**
	 * Default Constructor
	 */
	public NfeRetAutorizacaoStub(
			org.apache.axis2.context.ConfigurationContext configurationContext)
			throws org.apache.axis2.AxisFault
	{

		this(configurationContext,
				stubAddress);

	}

	/**
	 * Default Constructor
	 */
	public NfeRetAutorizacaoStub() throws org.apache.axis2.AxisFault
	{

		this(stubAddress);

	}

	/**
	 * Constructor taking the target endpoint
	 */
	public NfeRetAutorizacaoStub(java.lang.String targetEndpoint)
			throws org.apache.axis2.AxisFault
	{
		this(null, targetEndpoint);
	}

	/**
	 * Auto generated method signature Consulta Processamento de Lote de NF-e
	 * 
	 * @see org.adempierelbr.nfe.api.NfeRetAutorizacao#nfeRetAutorizacaoLote
	 * @param nfeDadosMsg1 @param nfeCabecMsg3
	 */

	public org.apache.axiom.om.OMElement nfeRetAutorizacaoLote(

			org.apache.axiom.om.OMElement extraElement2,
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE nfeCabecMsg3)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[0].getName());
			_operationClient
					.getOptions()
					.setAction(
							"http://www.portalfiscal.inf.br/nfe/wsdl/NfeRetAutorizacao/nfeRetAutorizacaoLote");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					extraElement2,
					dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://www.portalfiscal.inf.br/nfe/wsdl/NfeRetAutorizacao",
							"nfeRetAutorizacaoLote")));

			env.build();

			// add the children only if the parameter is not null
			if (nfeCabecMsg3 != null)
			{

				org.apache.axiom.om.OMElement omElementnfeCabecMsg3 = toOM(
						nfeCabecMsg3,
						optimizeContent(new javax.xml.namespace.QName(
								"http://www.portalfiscal.inf.br/nfe/wsdl/NfeRetAutorizacao",
								"nfeRetAutorizacaoLote")));
				addHeader(omElementnfeCabecMsg3, env);

			}

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext
					.getEnvelope();

			java.lang.Object object = fromOM(
					_returnEnv.getBody().getFirstElement(),
					br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult.class,
					getEnvelopeNamespaces(_returnEnv));

			return getNfeRetAutorizacaoLoteResultExtraElement((br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "nfeRetAutorizacaoLote")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "nfeRetAutorizacaoLote"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "nfeRetAutorizacaoLote"));
						java.lang.Class messageClass = java.lang.Class
								.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt,
								messageClass, null);
						java.lang.reflect.Method m = exceptionClass.getMethod(
								"setFaultMessage",
								new java.lang.Class[] { messageClass });
						m.invoke(ex, new java.lang.Object[] { messageObject });

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					}
					catch (java.lang.ClassCastException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.ClassNotFoundException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.NoSuchMethodException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.reflect.InvocationTargetException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.IllegalAccessException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
					catch (java.lang.InstantiationException e)
					{
						// we cannot intantiate the class - throw the original
						// Axis fault
						throw f;
					}
				}
				else
				{
					throw f;
				}
			}
			else
			{
				throw f;
			}
		}
		finally
		{
			if (_messageContext.getTransportOut() != null)
			{
				_messageContext.getTransportOut().getSender()
						.cleanup(_messageContext);
			}
		}
	}

	/**
	 * A utility method that copies the namepaces from the SOAPEnvelope
	 */
	private java.util.Map getEnvelopeNamespaces(
			org.apache.axiom.soap.SOAPEnvelope env)
	{
		java.util.Map returnMap = new java.util.HashMap();
		java.util.Iterator namespaceIterator = env.getAllDeclaredNamespaces();
		while (namespaceIterator.hasNext())
		{
			org.apache.axiom.om.OMNamespace ns = (org.apache.axiom.om.OMNamespace) namespaceIterator
					.next();
			returnMap.put(ns.getPrefix(), ns.getNamespaceURI());
		}
		return returnMap;
	}

	private javax.xml.namespace.QName[] opNameArray = null;

	private boolean optimizeContent(javax.xml.namespace.QName opName)
	{

		if (opNameArray == null)
		{
			return false;
		}
		for (int i = 0; i < opNameArray.length; i++)
		{
			if (opName.equals(opNameArray[i]))
			{
				return true;
			}
		}
		return false;
	}

	// https://nfe.fazenda.sp.gov.br/ws/nferetautorizacao.asmx
	private org.apache.axiom.om.OMElement toOM(
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory,
			org.apache.axiom.om.OMElement param1,
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg wrappedType = new br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg();

			wrappedType.setExtraElement(param1);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private org.apache.axiom.om.OMElement getNfeRetAutorizacaoLoteResultExtraElement(
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult wrappedType)
	{

		return wrappedType.getExtraElement();

	}

	/**
	 * get the default envelope
	 */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory)
	{
		return factory.getDefaultEnvelope();
	}

	private java.lang.Object fromOM(org.apache.axiom.om.OMElement param,
			java.lang.Class type, java.util.Map extraNamespaces)
			throws org.apache.axis2.AxisFault
	{

		try
		{

			if (br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg.class
					.equals(type))
			{

				return br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeDadosMsg.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult.class
					.equals(type))
			{

				return br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoLoteResult.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE.class
					.equals(type))
			{

				return br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE.class
					.equals(type))
			{

				return br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

		}
		catch (java.lang.Exception e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
		return null;
	}

}
