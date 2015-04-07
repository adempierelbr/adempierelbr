/**
 * LoteNFeStub.java This file was auto-generated from WSDL by the Apache Axis2
 * version: 1.6.2 Built on : Apr 17, 2012 (05:33:49 IST)
 */
package org.adempierelbr.nfse.sp.api;

/*
 * LoteNFeStub java implementation
 */

public class LoteNFeStub extends org.apache.axis2.client.Stub implements LoteNFe
{
	protected org.apache.axis2.description.AxisOperation[] _operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
	private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
	private java.util.HashMap faultMessageMap = new java.util.HashMap();

	private static int counter = 0;

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
		_service = new org.apache.axis2.description.AxisService("LoteNFe"
				+ getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation __operation;

		_operations = new org.apache.axis2.description.AxisOperation[10];

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "envioRPS"));
		_service.addOperation(__operation);

		_operations[0] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaCNPJ"));
		_service.addOperation(__operation);

		_operations[1] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaInformacoesLote"));
		_service.addOperation(__operation);

		_operations[2] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaNFeEmitidas"));
		_service.addOperation(__operation);

		_operations[3] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaNFe"));
		_service.addOperation(__operation);

		_operations[4] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "cancelamentoNFe"));
		_service.addOperation(__operation);

		_operations[5] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "testeEnvioLoteRPS"));
		_service.addOperation(__operation);

		_operations[6] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaLote"));
		_service.addOperation(__operation);

		_operations[7] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "consultaNFeRecebidas"));
		_service.addOperation(__operation);

		_operations[8] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(
				"http://www.prefeitura.sp.gov.br/nfe", "envioLoteRPS"));
		_service.addOperation(__operation);

		_operations[9] = __operation;

	}

	// populates the faults
	private void populateFaults()
	{

	}

	/**
	 * Constructor that takes in a configContext
	 */

	public LoteNFeStub(
			org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault
	{
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public LoteNFeStub(
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
	public LoteNFeStub(
			org.apache.axis2.context.ConfigurationContext configurationContext)
			throws org.apache.axis2.AxisFault
	{

		this(configurationContext,
				"https://nfe.prefeitura.sp.gov.br/ws/lotenfe.asmx");

	}

	/**
	 * Default Constructor
	 */
	public LoteNFeStub() throws org.apache.axis2.AxisFault
	{

		this("https://nfe.prefeitura.sp.gov.br/ws/lotenfe.asmx");

	}

	/**
	 * Constructor taking the target endpoint
	 */
	public LoteNFeStub(java.lang.String targetEndpoint)
			throws org.apache.axis2.AxisFault
	{
		this(null, targetEndpoint);
	}

	/**
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#envioRPS
	 * @param envioRPSRequest27
	 */

	public java.lang.String envioRPS(

	int versaoSchema28, java.lang.String mensagemXML29)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[0].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/envioRPS");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema28, mensagemXML29,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "envioRPS")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getEnvioRPSResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "EnvioRPS")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "EnvioRPS"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "EnvioRPS"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaCNPJ
	 * @param consultaCNPJRequest32
	 */

	public java.lang.String consultaCNPJ(

	int versaoSchema33, java.lang.String mensagemXML34)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[1].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/consultaCNPJ");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema33, mensagemXML34,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "consultaCNPJ")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaCNPJResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaCNPJ")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaCNPJ"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaCNPJ"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaInformacoesLote
	 * @param consultaInformacoesLoteRequest37
	 */

	public java.lang.String consultaInformacoesLote(

	int versaoSchema38, java.lang.String mensagemXML39)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[2].getName());
			_operationClient
					.getOptions()
					.setAction(
							"http://www.prefeitura.sp.gov.br/nfe/ws/consultaInformacoesLote");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema38, mensagemXML39,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe",
							"consultaInformacoesLote")));

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
					br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaInformacoesLoteResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaInformacoesLote")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(),
										"ConsultaInformacoesLote"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(),
										"ConsultaInformacoesLote"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaNFeEmitidas
	 * @param consultaNFeEmitidasRequest42
	 */

	public java.lang.String consultaNFeEmitidas(

	int versaoSchema43, java.lang.String mensagemXML44)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[3].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/consultaNFeEmitidas");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema43, mensagemXML44,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe",
							"consultaNFeEmitidas")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaNFeEmitidasResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaNFeEmitidas")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFeEmitidas"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFeEmitidas"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaNFe
	 * @param consultaNFeRequest47
	 */

	public java.lang.String consultaNFe(

	int versaoSchema48, java.lang.String mensagemXML49)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[4].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/consultaNFe");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema48, mensagemXML49,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "consultaNFe")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaNFeResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaNFe")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFe"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFe"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#cancelamentoNFe
	 * @param cancelamentoNFeRequest52
	 */

	public java.lang.String cancelamentoNFe(

	int versaoSchema53, java.lang.String mensagemXML54)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[5].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/cancelamentoNFe");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest dummyWrappedType = null;
			env = toEnvelope(
					getFactory(_operationClient.getOptions().getSoapVersionURI()),
					versaoSchema53,
					mensagemXML54,
					dummyWrappedType,
					optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "cancelamentoNFe")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getCancelamentoNFeResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "CancelamentoNFe")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CancelamentoNFe"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "CancelamentoNFe"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#testeEnvioLoteRPS
	 * @param testeEnvioLoteRPSRequest57
	 */

	public java.lang.String testeEnvioLoteRPS(

	int versaoSchema58, java.lang.String mensagemXML59)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[6].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/testeenvio");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema58, mensagemXML59,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe",
							"testeEnvioLoteRPS")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getTesteEnvioLoteRPSResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "TesteEnvioLoteRPS")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "TesteEnvioLoteRPS"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "TesteEnvioLoteRPS"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaLote
	 * @param consultaLoteRequest62
	 */

	public java.lang.String consultaLote(

	int versaoSchema63, java.lang.String mensagemXML64)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[7].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/consultaLote");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema63, mensagemXML64,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "consultaLote")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaLoteResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaLote")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaLote"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaLote"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#consultaNFeRecebidas
	 * @param consultaNFeRecebidasRequest67
	 */

	public java.lang.String consultaNFeRecebidas(

	int versaoSchema68, java.lang.String mensagemXML69)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[8].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/consultaNFeRecebidas");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema68, mensagemXML69,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe",
							"consultaNFeRecebidas")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getConsultaNFeRecebidasResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "ConsultaNFeRecebidas")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFeRecebidas"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "ConsultaNFeRecebidas"));
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
	 * Auto generated method signature
	 * 
	 * @see org.adempierelbr.nfse.sp.api.LoteNFe#envioLoteRPS
	 * @param envioLoteRPSRequest72
	 */

	public java.lang.String envioLoteRPS(

	int versaoSchema73, java.lang.String mensagemXML74)

	throws java.rmi.RemoteException

	{
		org.apache.axis2.context.MessageContext _messageContext = null;
		try
		{
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(_operations[9].getName());
			_operationClient.getOptions().setAction(
					"http://www.prefeitura.sp.gov.br/nfe/ws/envioLoteRPS");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(
					_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
					"&");

			// create a message context
			_messageContext = new org.apache.axis2.context.MessageContext();

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest dummyWrappedType = null;
			env = toEnvelope(getFactory(_operationClient.getOptions()
					.getSoapVersionURI()), versaoSchema73, mensagemXML74,
					dummyWrappedType, optimizeContent(new javax.xml.namespace.QName(
							"http://www.prefeitura.sp.gov.br/nfe", "envioLoteRPS")));

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

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse.class,
					getEnvelopeNamespaces(_returnEnv));

			return getEnvioLoteRPSResponseRetornoXML((br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse) object);

		}
		catch (org.apache.axis2.AxisFault f)
		{

			org.apache.axiom.om.OMElement faultElt = f.getDetail();
			if (faultElt != null)
			{
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), "EnvioLoteRPS")))
				{
					// make the fault by reflection
					try
					{
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "EnvioLoteRPS"));
						java.lang.Class exceptionClass = java.lang.Class
								.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor
								.newInstance(f.getMessage());
						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(
										faultElt.getQName(), "EnvioLoteRPS"));
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

	// https://nfe.prefeitura.sp.gov.br/ws/lotenfe.asmx
	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param
					.getOMElement(
							br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse.MY_QNAME,
							org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.om.OMElement toOM(
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			return param.getOMElement(
					br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope.getBody().addChild(
					wrappedType.getOMElement(
							br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest.MY_QNAME,
							factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getEnvioRPSResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaCNPJResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory,
			int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaInformacoesLoteResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory,
			int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaNFeEmitidasResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaNFeResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getCancelamentoNFeResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getTesteEnvioLoteRPSResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaLoteResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory,
			int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getConsultaNFeRecebidasResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
			org.apache.axiom.soap.SOAPFactory factory, int param1,
			java.lang.String param2,
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest dummyWrappedType,
			boolean optimizeContent) throws org.apache.axis2.AxisFault
	{

		try
		{
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest wrappedType = new br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest();

			wrappedType.setVersaoSchema(param1);

			wrappedType.setMensagemXML(param2);

			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory
					.getDefaultEnvelope();

			emptyEnvelope
					.getBody()
					.addChild(
							wrappedType
									.getOMElement(
											br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest.MY_QNAME,
											factory));

			return emptyEnvelope;
		}
		catch (org.apache.axis2.databinding.ADBException e)
		{
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.String getEnvioLoteRPSResponseRetornoXML(
			br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse wrappedType)
	{

		return wrappedType.getRetornoXML();

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

			if (br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.EnvioRPSRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.EnvioRPSResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaCNPJRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaCNPJResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaInformacoesLoteResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeEmitidasResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.CancelamentoNFeRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.CancelamentoNFeResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.TesteEnvioLoteRPSResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaLoteRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaLoteResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse.class
					.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.ConsultaNFeRecebidasResponse.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSRequest.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());

			}

			if (br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse.class.equals(type))
			{

				return br.gov.sp.prefeitura.www.nfe.EnvioLoteRPSResponse.Factory
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
