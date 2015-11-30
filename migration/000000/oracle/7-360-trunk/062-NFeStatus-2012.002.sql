
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100006, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '100', SUBSTR ('100-Autorizado o uso da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='100')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('100-Autorizado o uso da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='100'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100007, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '101', SUBSTR ('101-Cancelamento de NF-e homologado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='101')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('101-Cancelamento de NF-e homologado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='101'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100008, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '102', SUBSTR ('102-Inutilização de número homologado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='102')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('102-Inutilização de número homologado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='102'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100009, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '103', SUBSTR ('103-Lote recebido com sucesso', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='103')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('103-Lote recebido com sucesso', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='103'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100010, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '104', SUBSTR ('104-Lote processado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='104')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('104-Lote processado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='104'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100011, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '105', SUBSTR ('105-Lote em processamento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='105')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('105-Lote em processamento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='105'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100012, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '106', SUBSTR ('106-Lote não localizado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='106')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('106-Lote não localizado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='106'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100013, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '107', SUBSTR ('107-Serviço em Operação', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='107')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('107-Serviço em Operação', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='107'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100014, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '108', SUBSTR ('108-Serviço Paralisado Momentaneamente (curto prazo)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='108')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('108-Serviço Paralisado Momentaneamente (curto prazo)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='108'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100015, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '109', SUBSTR ('109-Serviço Paralisado sem Previsão', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='109')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('109-Serviço Paralisado sem Previsão', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='109'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100016, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '110', SUBSTR ('110-Uso Denegado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='110')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('110-Uso Denegado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='110'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100017, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '111', SUBSTR ('111-Consulta cadastro com uma ocorrência', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='111')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('111-Consulta cadastro com uma ocorrência', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='111'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100018, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '112', SUBSTR ('112-Consulta cadastro com mais de uma ocorrência', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='112')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('112-Consulta cadastro com mais de uma ocorrência', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='112'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100019, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '201', SUBSTR ('201-Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='201')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('201-Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='201'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100020, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '202', SUBSTR ('202-Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='202')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('202-Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='202'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100021, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '203', SUBSTR ('203-Rejeição: Emissor não habilitado para emissão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='203')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('203-Rejeição: Emissor não habilitado para emissão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='203'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100022, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '204', SUBSTR ('204-Rejeição: Duplicidade de NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='204')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('204-Rejeição: Duplicidade de NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='204'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100023, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '205', SUBSTR ('205-Rejeição: NF-e está denegada na base de dados da SEFAZ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='205')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('205-Rejeição: NF-e está denegada na base de dados da SEFAZ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='205'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100024, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '206', SUBSTR ('206-Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='206')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('206-Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='206'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100025, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '207', SUBSTR ('207-Rejeição: CNPJ do emitente inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='207')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('207-Rejeição: CNPJ do emitente inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='207'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100026, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '208', SUBSTR ('208-Rejeição: CNPJ do destinatário inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='208')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('208-Rejeição: CNPJ do destinatário inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='208'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100027, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '209', SUBSTR ('209-Rejeição: IE do emitente inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='209')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('209-Rejeição: IE do emitente inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='209'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100028, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '210', SUBSTR ('210-Rejeição: IE do destinatário inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='210')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('210-Rejeição: IE do destinatário inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='210'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100029, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '211', SUBSTR ('211-Rejeição: IE do substituto inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='211')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('211-Rejeição: IE do substituto inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='211'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100030, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '212', SUBSTR ('212-Rejeição: Data de emissão NF-e posterior a data de recebimento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='212')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('212-Rejeição: Data de emissão NF-e posterior a data de recebimento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='212'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100031, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '213', SUBSTR ('213-Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='213')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('213-Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='213'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100032, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '214', SUBSTR ('214-Rejeição: Tamanho da mensagem excedeu o limite estabelecido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='214')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('214-Rejeição: Tamanho da mensagem excedeu o limite estabelecido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='214'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100033, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '215', SUBSTR ('215-Rejeição: Falha no schema XML', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='215')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('215-Rejeição: Falha no schema XML', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='215'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100034, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '216', SUBSTR ('216-Rejeição: Chave de Acesso difere da cadastrada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='216')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('216-Rejeição: Chave de Acesso difere da cadastrada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='216'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100035, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '217', SUBSTR ('217-Rejeição: NF-e não consta na base de dados da SEFAZ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='217')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('217-Rejeição: NF-e não consta na base de dados da SEFAZ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='217'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100036, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '218', SUBSTR ('218-Rejeição: NF-e já esta cancelada na base de dados da SEFAZ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='218')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('218-Rejeição: NF-e já esta cancelada na base de dados da SEFAZ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='218'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100037, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '219', SUBSTR ('219-Rejeição: Circulação da NF-e verificada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='219')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('219-Rejeição: Circulação da NF-e verificada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='219'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100038, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '220', SUBSTR ('220-Rejeição: NF-e autorizada há mais de 7 dias (168 horas)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='220')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('220-Rejeição: NF-e autorizada há mais de 7 dias (168 horas)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='220'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100039, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '221', SUBSTR ('221-Rejeição: Confirmado o recebimento da NF-e pelo destinatário', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='221')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('221-Rejeição: Confirmado o recebimento da NF-e pelo destinatário', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='221'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100040, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '222', SUBSTR ('222-Rejeição: Protocolo de Autorização de Uso difere do cadastrado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='222')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('222-Rejeição: Protocolo de Autorização de Uso difere do cadastrado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='222'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100041, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '223', SUBSTR ('223-Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='223')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('223-Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='223'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100042, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '224', SUBSTR ('224-Rejeição: A faixa inicial é maior que a faixa final', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='224')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('224-Rejeição: A faixa inicial é maior que a faixa final', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='224'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100043, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '225', SUBSTR ('225-Rejeição: Falha no Schema XML do lote de NFe', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='225')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('225-Rejeição: Falha no Schema XML do lote de NFe', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='225'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100044, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '226', SUBSTR ('226-Rejeição: Código da UF do Emitente diverge da UF autorizadora', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='226')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('226-Rejeição: Código da UF do Emitente diverge da UF autorizadora', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='226'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100045, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '227', SUBSTR ('227-Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFe', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='227')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('227-Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFe', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='227'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100046, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '228', SUBSTR ('228-Rejeição: Data de Emissão muito atrasada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='228')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('228-Rejeição: Data de Emissão muito atrasada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='228'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100047, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '229', SUBSTR ('229-Rejeição: IE do emitente não informada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='229')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('229-Rejeição: IE do emitente não informada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='229'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100048, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '230', SUBSTR ('230-Rejeição: IE do emitente não cadastrada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='230')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('230-Rejeição: IE do emitente não cadastrada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='230'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100049, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '231', SUBSTR ('231-Rejeição: IE do emitente não vinculada ao CNPJ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='231')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('231-Rejeição: IE do emitente não vinculada ao CNPJ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='231'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100050, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '232', SUBSTR ('232-Rejeição: IE do destinatário não informada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='232')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('232-Rejeição: IE do destinatário não informada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='232'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100051, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '233', SUBSTR ('233-Rejeição: IE do destinatário não cadastrada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='233')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('233-Rejeição: IE do destinatário não cadastrada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='233'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100052, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '234', SUBSTR ('234-Rejeição: IE do destinatário não vinculada ao CNPJ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='234')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('234-Rejeição: IE do destinatário não vinculada ao CNPJ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='234'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100053, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '235', SUBSTR ('235-Rejeição: Inscrição SUFRAMA inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='235')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('235-Rejeição: Inscrição SUFRAMA inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='235'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100054, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '236', SUBSTR ('236-Rejeição: Chave de Acesso com dígito verificador inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='236')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('236-Rejeição: Chave de Acesso com dígito verificador inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='236'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100055, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '237', SUBSTR ('237-Rejeição: CPF do destinatário inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='237')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('237-Rejeição: CPF do destinatário inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='237'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100056, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '238', SUBSTR ('238-Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='238')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('238-Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='238'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100057, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '239', SUBSTR ('239-Rejeição: Cabeçalho - Versão do arquivo XML não suportada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='239')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('239-Rejeição: Cabeçalho - Versão do arquivo XML não suportada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='239'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100058, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '240', SUBSTR ('240-Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='240')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('240-Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='240'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100059, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '241', SUBSTR ('241-Rejeição: Um número da faixa já foi utilizado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='241')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('241-Rejeição: Um número da faixa já foi utilizado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='241'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100060, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '242', SUBSTR ('242-Rejeição: Cabeçalho - Falha no Schema XML', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='242')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('242-Rejeição: Cabeçalho - Falha no Schema XML', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='242'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100061, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '243', SUBSTR ('243-Rejeição: XML Mal Formado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='243')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('243-Rejeição: XML Mal Formado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='243'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100062, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '244', SUBSTR ('244-Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='244')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('244-Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='244'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100063, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '245', SUBSTR ('245-Rejeição: CNPJ Emitente não cadastrado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='245')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('245-Rejeição: CNPJ Emitente não cadastrado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='245'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100064, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '246', SUBSTR ('246-Rejeição: CNPJ Destinatário não cadastrado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='246')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('246-Rejeição: CNPJ Destinatário não cadastrado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='246'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100065, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '247', SUBSTR ('247-Rejeição: Sigla da UF do Emitente diverge da UF autorizadora', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='247')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('247-Rejeição: Sigla da UF do Emitente diverge da UF autorizadora', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='247'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100066, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '248', SUBSTR ('248-Rejeição: UF do Recibo diverge da UF autorizadora', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='248')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('248-Rejeição: UF do Recibo diverge da UF autorizadora', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='248'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100067, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '249', SUBSTR ('249-Rejeição: UF da Chave de Acesso diverge da UF autorizadora', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='249')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('249-Rejeição: UF da Chave de Acesso diverge da UF autorizadora', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='249'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100068, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '250', SUBSTR ('250-Rejeição: UF diverge da UF autorizadora', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='250')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('250-Rejeição: UF diverge da UF autorizadora', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='250'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100069, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '251', SUBSTR ('251-Rejeição: UF/Município destinatário não pertence a SUFRAMA', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='251')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('251-Rejeição: UF/Município destinatário não pertence a SUFRAMA', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='251'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100070, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '252', SUBSTR ('252-Rejeição: Ambiente informado diverge do Ambiente de recebimento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='252')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('252-Rejeição: Ambiente informado diverge do Ambiente de recebimento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='252'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100071, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '253', SUBSTR ('253-Rejeição: Digito Verificador da chave de acesso composta inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='253')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('253-Rejeição: Digito Verificador da chave de acesso composta inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='253'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100072, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '254', SUBSTR ('254-Rejeição: NF-e complementar não possui NF referenciada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='254')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('254-Rejeição: NF-e complementar não possui NF referenciada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='254'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100073, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '255', SUBSTR ('255-Rejeição: NF-e complementar possui mais de uma NF referenciada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='255')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('255-Rejeição: NF-e complementar possui mais de uma NF referenciada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='255'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100074, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '256', SUBSTR ('256-Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='256')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('256-Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='256'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100075, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '257', SUBSTR ('257-Rejeição: Solicitante não habilitado para emissão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='257')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('257-Rejeição: Solicitante não habilitado para emissão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='257'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100076, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '258', SUBSTR ('258-Rejeição: CNPJ da consulta inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='258')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('258-Rejeição: CNPJ da consulta inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='258'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100077, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '259', SUBSTR ('259-Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='259')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('259-Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='259'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100078, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '260', SUBSTR ('260-Rejeição: IE da consulta inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='260')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('260-Rejeição: IE da consulta inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='260'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100079, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '261', SUBSTR ('261-Rejeição: IE da consulta não cadastrada como contribuinte na UF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='261')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('261-Rejeição: IE da consulta não cadastrada como contribuinte na UF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='261'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100080, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '262', SUBSTR ('262-Rejeição: UF não fornece consulta por CPF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='262')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('262-Rejeição: UF não fornece consulta por CPF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='262'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100081, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '263', SUBSTR ('263-Rejeição: CPF da consulta inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='263')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('263-Rejeição: CPF da consulta inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='263'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100082, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '264', SUBSTR ('264-Rejeição: CPF da consulta não cadastrado como contribuinte na UF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='264')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('264-Rejeição: CPF da consulta não cadastrado como contribuinte na UF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='264'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100083, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '265', SUBSTR ('265-Rejeição: Sigla da UF da consulta difere da UF do Web Service', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='265')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('265-Rejeição: Sigla da UF da consulta difere da UF do Web Service', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='265'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100084, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '266', SUBSTR ('266-Rejeição: Série utilizada não permitida no Web Service', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='266')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('266-Rejeição: Série utilizada não permitida no Web Service', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='266'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100085, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '267', SUBSTR ('267-Rejeição: NF Complementar referencia uma NF-e inexistente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='267')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('267-Rejeição: NF Complementar referencia uma NF-e inexistente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='267'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100086, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '268', SUBSTR ('268-Rejeição: NF Complementar referencia uma outra NF-e Complementar', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='268')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('268-Rejeição: NF Complementar referencia uma outra NF-e Complementar', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='268'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100087, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '269', SUBSTR ('269-Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='269')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('269-Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='269'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100088, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '270', SUBSTR ('270-Rejeição: Código Município do Fato Gerador: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='270')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('270-Rejeição: Código Município do Fato Gerador: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='270'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100089, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '271', SUBSTR ('271-Rejeição: Código Município do Fato Gerador: difere da UF do emitente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='271')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('271-Rejeição: Código Município do Fato Gerador: difere da UF do emitente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='271'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100090, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '272', SUBSTR ('272-Rejeição: Código Município do Emitente: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='272')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('272-Rejeição: Código Município do Emitente: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='272'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100091, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '273', SUBSTR ('273-Rejeição: Código Município do Emitente: difere da UF do emitente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='273')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('273-Rejeição: Código Município do Emitente: difere da UF do emitente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='273'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100092, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '274', SUBSTR ('274-Rejeição: Código Município do Destinatário: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='274')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('274-Rejeição: Código Município do Destinatário: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='274'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100093, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '275', SUBSTR ('275-Rejeição: Código Município do Destinatário: difere da UF do Destinatário', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='275')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('275-Rejeição: Código Município do Destinatário: difere da UF do Destinatário', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='275'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100094, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '276', SUBSTR ('276-Rejeição: Código Município do Local de Retirada: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='276')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('276-Rejeição: Código Município do Local de Retirada: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='276'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100095, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '277', SUBSTR ('277-Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='277')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('277-Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='277'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100096, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '278', SUBSTR ('278-Rejeição: Código Município do Local de Entrega: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='278')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('278-Rejeição: Código Município do Local de Entrega: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='278'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100097, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '279', SUBSTR ('279-Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='279')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('279-Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='279'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100098, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '280', SUBSTR ('280-Rejeição: Certificado Transmissor inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='280')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('280-Rejeição: Certificado Transmissor inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='280'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100099, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '281', SUBSTR ('281-Rejeição: Certificado Transmissor Data Validade', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='281')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('281-Rejeição: Certificado Transmissor Data Validade', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='281'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100100, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '282', SUBSTR ('282-Rejeição: Certificado Transmissor sem CNPJ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='282')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('282-Rejeição: Certificado Transmissor sem CNPJ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='282'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100101, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '283', SUBSTR ('283-Rejeição: Certificado Transmissor - erro Cadeia de Certificação', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='283')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('283-Rejeição: Certificado Transmissor - erro Cadeia de Certificação', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='283'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100102, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '284', SUBSTR ('284-Rejeição: Certificado Transmissor revogado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='284')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('284-Rejeição: Certificado Transmissor revogado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='284'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100103, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '285', SUBSTR ('285-Rejeição: Certificado Transmissor difere ICP-Brasil', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='285')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('285-Rejeição: Certificado Transmissor difere ICP-Brasil', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='285'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100104, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '286', SUBSTR ('286-Rejeição: Certificado Transmissor erro no acesso a LCR', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='286')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('286-Rejeição: Certificado Transmissor erro no acesso a LCR', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='286'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100105, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '287', SUBSTR ('287-Rejeição: Código Município do FG - ISSQN: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='287')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('287-Rejeição: Código Município do FG - ISSQN: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='287'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100106, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '288', SUBSTR ('288-Rejeição: Código Município do FG - Transporte: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='288')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('288-Rejeição: Código Município do FG - Transporte: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='288'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100107, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '289', SUBSTR ('289-Rejeição: Código da UF informada diverge da UF solicitada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='289')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('289-Rejeição: Código da UF informada diverge da UF solicitada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='289'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100108, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '290', SUBSTR ('290-Rejeição: Certificado Assinatura inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='290')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('290-Rejeição: Certificado Assinatura inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='290'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100109, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '291', SUBSTR ('291-Rejeição: Certificado Assinatura Data Validade', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='291')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('291-Rejeição: Certificado Assinatura Data Validade', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='291'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100110, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '292', SUBSTR ('292-Rejeição: Certificado Assinatura sem CNPJ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='292')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('292-Rejeição: Certificado Assinatura sem CNPJ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='292'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100111, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '293', SUBSTR ('293-Rejeição: Certificado Assinatura - erro Cadeia de Certificação', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='293')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('293-Rejeição: Certificado Assinatura - erro Cadeia de Certificação', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='293'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100112, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '294', SUBSTR ('294-Rejeição: Certificado Assinatura revogado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='294')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('294-Rejeição: Certificado Assinatura revogado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='294'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100113, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '295', SUBSTR ('295-Rejeição: Certificado Assinatura difere ICP-Brasil', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='295')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('295-Rejeição: Certificado Assinatura difere ICP-Brasil', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='295'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100114, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '296', SUBSTR ('296-Rejeição: Certificado Assinatura erro no acesso a LCR', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='296')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('296-Rejeição: Certificado Assinatura erro no acesso a LCR', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='296'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100115, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '297', SUBSTR ('297-Rejeição: Assinatura difere do calculado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='297')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('297-Rejeição: Assinatura difere do calculado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='297'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100116, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '298', SUBSTR ('298-Rejeição: Assinatura difere do padrão do Projeto', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='298')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('298-Rejeição: Assinatura difere do padrão do Projeto', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='298'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100117, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '299', SUBSTR ('299-Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='299')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('299-Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='299'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100118, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '401', SUBSTR ('401-Rejeição: CPF do remetente inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='401')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('401-Rejeição: CPF do remetente inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='401'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100119, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '402', SUBSTR ('402-Rejeição: XML da área de dados com codificação diferente de UTF-8', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='402')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('402-Rejeição: XML da área de dados com codificação diferente de UTF-8', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='402'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100120, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '403', SUBSTR ('403-Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='403')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('403-Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='403'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100121, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '404', SUBSTR ('404-Rejeição: Uso de prefixo de namespace não permitido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='404')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('404-Rejeição: Uso de prefixo de namespace não permitido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='404'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100122, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '405', SUBSTR ('405-Rejeição: Código do país do emitente: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='405')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('405-Rejeição: Código do país do emitente: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='405'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100123, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '406', SUBSTR ('406-Rejeição: Código do país do destinatário: dígito inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='406')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('406-Rejeição: Código do país do destinatário: dígito inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='406'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100124, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '407', SUBSTR ('407-Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='407')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('407-Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='407'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100125, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '453', SUBSTR ('453-Rejeição: Ano de inutilização não pode ser superior ao Ano atual', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='453')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('453-Rejeição: Ano de inutilização não pode ser superior ao Ano atual', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='453'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100126, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '454', SUBSTR ('454-Rejeição: Ano de inutilização não pode ser inferior a 2006', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='454')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('454-Rejeição: Ano de inutilização não pode ser inferior a 2006', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='454'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100127, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '478', SUBSTR ('478-Rejeição: Local da entrega não informado para faturamento direto de veículos novos', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='478')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('478-Rejeição: Local da entrega não informado para faturamento direto de veículos novos', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='478'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100128, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '999', SUBSTR ('999-Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da exceção)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='999')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('999-Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da exceção)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='999'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100129, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '301', SUBSTR ('301-Uso Denegado: Irregularidade fiscal do emitente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='301')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('301-Uso Denegado: Irregularidade fiscal do emitente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='301'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100130, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '302', SUBSTR ('302-Uso Denegado : Irregularidade fiscal do destinatário', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='302')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('302-Uso Denegado : Irregularidade fiscal do destinatário', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='302'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120155, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '409', SUBSTR ('409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='409')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='409'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120156, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '410', SUBSTR ('410-Rejeição: UF informada no campo cUF não é atendida pelo Web Service', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='410')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('410-Rejeição: UF informada no campo cUF não é atendida pelo Web Service', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='410'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120157, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '411', SUBSTR ('411-Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='411')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('411-Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='411'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120158, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '420', SUBSTR ('420-Rejeição: Cancelamento para NF-e já cancelada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='420')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('420-Rejeição: Cancelamento para NF-e já cancelada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='420'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120159, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '450', SUBSTR ('450-Rejeição: Modelo da NF-e diferente de 55', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='450')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('450-Rejeição: Modelo da NF-e diferente de 55', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='450'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120160, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '451', SUBSTR ('451-Rejeição: Processo de emissão informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='451')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('451-Rejeição: Processo de emissão informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='451'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120161, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '452', SUBSTR ('452-Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='452')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('452-Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='452'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120162, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '502', SUBSTR ('502-Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='502')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('502-Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='502'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120163, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '503', SUBSTR ('503-Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='503')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('503-Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='503'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120164, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '504', SUBSTR ('504-Rejeição: Data de Entrada/Saída posterior ao permitido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='504')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('504-Rejeição: Data de Entrada/Saída posterior ao permitido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='504'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120165, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '505', SUBSTR ('505-Rejeição: Data de Entrada/Saída anterior ao permitido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='505')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('505-Rejeição: Data de Entrada/Saída anterior ao permitido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='505'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120166, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '506', SUBSTR ('506-Rejeição: Data de Saída menor que a Data de Emissão', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='506')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('506-Rejeição: Data de Saída menor que a Data de Emissão', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='506'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120167, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '507', SUBSTR ('507-Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='507')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('507-Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='507'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120168, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '508', SUBSTR ('508-Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='508')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('508-Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='508'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120169, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '509', SUBSTR ('509-Rejeição: Informado código de município diferente de “9999999” para operação com o exterior', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='509')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('509-Rejeição: Informado código de município diferente de “9999999” para operação com o exterior', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='509'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120170, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '510', SUBSTR ('510-Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='510')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('510-Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='510'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120171, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '511', SUBSTR ('511-Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='511')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('511-Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='511'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120172, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '512', SUBSTR ('512-Rejeição: CNPJ do Local de Retirada inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='512')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('512-Rejeição: CNPJ do Local de Retirada inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='512'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120173, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '513', SUBSTR ('513-Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='513')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('513-Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='513'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120174, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '514', SUBSTR ('514-Rejeição: CNPJ do Local de Entrega inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='514')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('514-Rejeição: CNPJ do Local de Entrega inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='514'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120175, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '515', SUBSTR ('515-Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='515')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('515-Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='515'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120176, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '516', SUBSTR ('516-Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='516')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('516-Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='516'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120177, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '517', SUBSTR ('517-Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='517')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('517-Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='517'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120178, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '518', SUBSTR ('518-Rejeição: CFOP de entrada para NF-e de saída', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='518')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('518-Rejeição: CFOP de entrada para NF-e de saída', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='518'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120179, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '519', SUBSTR ('519-Rejeição: CFOP de saída para NF-e de entrada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='519')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('519-Rejeição: CFOP de saída para NF-e de entrada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='519'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120180, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '520', SUBSTR ('520-Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='520')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('520-Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='520'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120181, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '521', SUBSTR ('521-Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='521')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('521-Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='521'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120182, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '522', SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere UF destinatário.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='522')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere UF destinatário.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='522'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120183, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '523', SUBSTR ('523-Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UF destinatário.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='523')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('523-Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UF destinatário.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='523'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120184, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '524', SUBSTR ('524-Rejeição: CFOP de Operação com Exterior e não informado NCM', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='524')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('524-Rejeição: CFOP de Operação com Exterior e não informado NCM', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='524'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120185, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '525', SUBSTR ('525-Rejeição: CFOP de Importação e não informado dados da DI', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='525')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('525-Rejeição: CFOP de Importação e não informado dados da DI', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='525'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120186, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '526', SUBSTR ('526-Rejeição: CFOP de Exportação e não informado Local de Embarque', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='526')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('526-Rejeição: CFOP de Exportação e não informado Local de Embarque', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='526'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120187, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '527', SUBSTR ('527-Rejeição: Operação de Exportação com informação de ICMS incompatível', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='527')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('527-Rejeição: Operação de Exportação com informação de ICMS incompatível', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='527'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120188, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '528', SUBSTR ('528-Rejeição: Valor do ICMS difere do produto BC e Alíquota', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='528')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('528-Rejeição: Valor do ICMS difere do produto BC e Alíquota', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='528'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120189, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '529', SUBSTR ('529-Rejeição: NCM de informação obrigatória para produto tributado pelo IPI', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='529')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('529-Rejeição: NCM de informação obrigatória para produto tributado pelo IPI', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='529'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120190, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '530', SUBSTR ('530-Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='530')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('530-Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='530'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120191, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '531', SUBSTR ('531-Rejeição: Total da BC ICMS difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='531')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('531-Rejeição: Total da BC ICMS difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='531'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120192, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '532', SUBSTR ('532-Rejeição: Total do ICMS difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='532')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('532-Rejeição: Total do ICMS difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='532'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120193, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '533', SUBSTR ('533-Rejeição: Total da BC ICMS-ST difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='533')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('533-Rejeição: Total da BC ICMS-ST difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='533'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120194, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '534', SUBSTR ('534-Rejeição: Total do ICMS-ST difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='534')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('534-Rejeição: Total do ICMS-ST difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='534'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120195, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '535', SUBSTR ('535-Rejeição: Total do Frete difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='535')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('535-Rejeição: Total do Frete difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='535'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120196, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '536', SUBSTR ('536-Rejeição: Total do Seguro difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='536')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('536-Rejeição: Total do Seguro difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='536'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120197, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '537', SUBSTR ('537-Rejeição: Total do Desconto difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='537')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('537-Rejeição: Total do Desconto difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='537'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120198, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '538', SUBSTR ('538-Rejeição: Total do IPI difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='538')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('538-Rejeição: Total do IPI difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='538'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120199, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '539', SUBSTR ('539-Rejeição: Duplicidade de NF-e, com diferença na Chave de Acesso [99999999999999999999999999999999999999999]', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='539')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('539-Rejeição: Duplicidade de NF-e, com diferença na Chave de Acesso [99999999999999999999999999999999999999999]', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='539'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120200, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '540', SUBSTR ('540-Rejeição: CPF do Local de Retirada inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='540')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('540-Rejeição: CPF do Local de Retirada inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='540'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120201, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '541', SUBSTR ('541-Rejeição: CPF do Local de Entrega inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='541')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('541-Rejeição: CPF do Local de Entrega inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='541'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120202, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '542', SUBSTR ('542-Rejeição: CNPJ do Transportador inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='542')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('542-Rejeição: CNPJ do Transportador inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='542'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120203, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '543', SUBSTR ('543-Rejeição: CPF do Transportador inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='543')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('543-Rejeição: CPF do Transportador inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='543'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120204, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '544', SUBSTR ('544-Rejeição: IE do Transportador inválida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='544')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('544-Rejeição: IE do Transportador inválida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='544'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120205, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '545', SUBSTR ('545-Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='545')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('545-Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='545'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120206, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '546', SUBSTR ('546-Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFe', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='546')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('546-Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFe', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='546'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120207, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '547', SUBSTR ('547-Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='547')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('547-Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='547'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120208, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '548', SUBSTR ('548-Rejeição: CNPJ da NF referenciada inválido.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='548')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('548-Rejeição: CNPJ da NF referenciada inválido.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='548'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120209, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '549', SUBSTR ('549-Rejeição: CNPJ da NF referenciada de produtor inválido.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='549')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('549-Rejeição: CNPJ da NF referenciada de produtor inválido.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='549'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120210, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '550', SUBSTR ('550-Rejeição: CPF da NF referenciada de produtor inválido.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='550')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('550-Rejeição: CPF da NF referenciada de produtor inválido.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='550'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120211, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '551', SUBSTR ('551-Rejeição: IE da NF referenciada de produtor inválido.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='551')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('551-Rejeição: IE da NF referenciada de produtor inválido.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='551'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120212, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '552', SUBSTR ('552-Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='552')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('552-Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='552'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120213, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '553', SUBSTR ('553-Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='553')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('553-Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='553'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120214, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '554', SUBSTR ('554-Rejeição: Série difere da faixa 0-899', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='554')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('554-Rejeição: Série difere da faixa 0-899', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='554'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120215, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '555', SUBSTR ('555-Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='555')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('555-Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='555'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120216, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '556', SUBSTR ('556-Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='556')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('556-Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='556'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120217, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '557', SUBSTR ('557-Rejeição: A Justificativa de entrada em contingência deve ser informada.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='557')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('557-Rejeição: A Justificativa de entrada em contingência deve ser informada.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='557'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120218, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '558', SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de emissão.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='558')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de emissão.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='558'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120219, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '559', SUBSTR ('559-Rejeição: UF do Transportador não informada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='559')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('559-Rejeição: UF do Transportador não informada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='559'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120220, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '560', SUBSTR ('560-Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='560')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('560-Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='560'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120221, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '561', SUBSTR ('561-Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NFe', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='561')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('561-Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NFe', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='561'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120222, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '562', SUBSTR ('562-Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='562')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('562-Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='562'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120223, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '563', SUBSTR ('563-Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='563')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('563-Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='563'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120224, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '564', SUBSTR ('564-Rejeição: Total do Produto / Serviço difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='564')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('564-Rejeição: Total do Produto / Serviço difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='564'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120225, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '565', SUBSTR ('565-Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='565')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('565-Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='565'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120226, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '567', SUBSTR ('567-Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='567')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('567-Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='567'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120227, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '568', SUBSTR ('568-Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='568')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('568-Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='568'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120228, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '204', SUBSTR ('204-Rejeição: Duplicidade de NF-e [999999999999999999999999999999999]', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='204')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('204-Rejeição: Duplicidade de NF-e [999999999999999999999999999999999]', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='204'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120229, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '409', SUBSTR ('409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='409')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='409'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120230, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '410', SUBSTR ('410-Rejeição: UF informada no campo cUF não é atendida pelo Web Service', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='410')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('410-Rejeição: UF informada no campo cUF não é atendida pelo Web Service', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='410'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120231, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '411', SUBSTR ('411-Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='411')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('411-Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='411'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120232, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '509', SUBSTR ('509-Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='509')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('509-Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='509'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120233, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '513', SUBSTR ('513-Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='513')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('513-Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='513'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120234, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '515', SUBSTR ('515-Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='515')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('515-Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='515'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120235, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '516', SUBSTR ('516-Rejeição: Obrigatória a informação do NCM e/ou genero', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='516')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('516-Rejeição: Obrigatória a informação do NCM e/ou genero', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='516'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120236, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '517', SUBSTR ('517-Rejeição: Informação do NCM difere da informação de gênero', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='517')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('517-Rejeição: Informação do NCM difere da informação de gênero', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='517'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120237, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '520', SUBSTR ('520-Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='520')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('520-Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='520'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120238, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '521', SUBSTR ('521-Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='521')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('521-Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='521'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120239, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '555', SUBSTR ('555-Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='555')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('555-Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='555'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120240, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '556', SUBSTR ('556-Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='556')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('556-Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='556'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120241, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '557', SUBSTR ('557-Rejeição: A Justificativa de entrada em contingência deve ser informada.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='557')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('557-Rejeição: A Justificativa de entrada em contingência deve ser informada.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='557'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120242, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '558', SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de emissão.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='558')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de emissão.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='558'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120243, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '559', SUBSTR ('559-Rejeição: UF do Transportador não informado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='559')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('559-Rejeição: UF do Transportador não informado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='559'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120244, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '560', SUBSTR ('560-Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='560')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('560-Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='560'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120245, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '561', SUBSTR ('561-Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='561')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('561-Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='561'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120246, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '562', SUBSTR ('562-Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='562')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('562-Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='562'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120247, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '302', SUBSTR ('302-Uso Denegado : Irregularidade fiscal do destinatário', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='302')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('302-Uso Denegado : Irregularidade fiscal do destinatário', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='302'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120238, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '521', SUBSTR ('521-Rejeição: CFOP de Operação Estadual e UF do emitente difere da UF do destinatário para destinatário contribuinte do ICMS.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='521')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('521-Rejeição: CFOP de Operação Estadual e UF do emitente difere da UF do destinatário para destinatário contribuinte do ICMS.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='521'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120248, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '522', SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere da UF destinatário.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='522')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere da UF destinatário.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='522'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120242, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '558', SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de recebimento.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='558')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('558-Rejeição: Data de entrada em contingência posterior a data de recebimento.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='558'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120249, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '569', SUBSTR ('569-Rejeição: Data de entrada em contingência muito atrasada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='569')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('569-Rejeição: Data de entrada em contingência muito atrasada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='569'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120250, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '570', SUBSTR ('570-Rejeição: tpEmis = 2 só é válido na contingência SCAN', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='570')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('570-Rejeição: tpEmis = 2 só é válido na contingência SCAN', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='570'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120251, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '571', SUBSTR ('571-Rejeição: O tpEmis informado diferente de 2 para contingência SCAN', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='571')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('571-Rejeição: O tpEmis informado diferente de 2 para contingência SCAN', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='571'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120248, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '522', SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='522')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('522-Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='522'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120246, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '562', SUBSTR ('562-Rejeição: Código numérico informado na Chave de Acesso difere do Código Numérico da NF-e [chNFe:99999999999999999999999999999999999999999999]', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='562')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('562-Rejeição: Código numérico informado na Chave de Acesso difere do Código Numérico da NF-e [chNFe:99999999999999999999999999999999999999999999]', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='562'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120252, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '129', SUBSTR ('129-Lote de Evento Processado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='129')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('129-Lote de Evento Processado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='129'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120253, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '135', SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='135')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='135'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120254, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '136', SUBSTR ('136-Evento registrado, mas não vinculado a NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='136')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('136-Evento registrado, mas não vinculado a NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='136'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120255, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '489', SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='489')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='489'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120256, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '490', SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='490')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='490'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120257, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '491', SUBSTR ('491-Rejeição: O tpEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='491')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('491-Rejeição: O tpEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='491'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120258, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '492', SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='492')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='492'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120259, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '493', SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='493')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='493'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120260, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '494', SUBSTR ('494-Rejeição: Chave de Acesso inexistente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='494')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('494-Rejeição: Chave de Acesso inexistente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='494'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120261, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '501', SUBSTR ('501-Rejeição: NF-e autorizada há mais de 30 dias (720 horas)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='501')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('501-Rejeição: NF-e autorizada há mais de 30 dias (720 horas)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='501'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120262, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '572', SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='572')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='572'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120263, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '573', SUBSTR ('573-Rejeição: Duplicidade de Evento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='573')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('573-Rejeição: Duplicidade de Evento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='573'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120264, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '574', SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='574')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='574'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120265, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '575', SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='575')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='575'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120266, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '576', SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='576')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='576'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120267, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '577', SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='577')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='577'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120268, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '578', SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='578')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='578'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120269, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '579', SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='579')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='579'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120270, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '580', SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='580')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='580'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120271, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '587', SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='587')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='587'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120272, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '588', SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='588')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='588'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120273, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '590', SUBSTR ('590-Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='590')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('590-Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='590'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120274, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '591', SUBSTR ('591-Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='591')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('591-Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='591'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120275, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '592', SUBSTR ('592-Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='592')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('592-Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='592'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120276, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '595', SUBSTR ('595-Rejeição: A versão do leiaute da NF-e utilizada não é mais válida', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='595')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('595-Rejeição: A versão do leiaute da NF-e utilizada não é mais válida', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='595'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120277, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '596', SUBSTR ('596-Rejeição: Ambiente de homologação indisponível para recepção de NF-e da versão 1.10.', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='596')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('596-Rejeição: Ambiente de homologação indisponível para recepção de NF-e da versão 1.10.', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='596'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120278, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '597', SUBSTR ('597-Rejeição: NF-e emitida em ambiente de homologação com CNPJ do destinatário diferente de 99999999000191', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='597')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('597-Rejeição: NF-e emitida em ambiente de homologação com CNPJ do destinatário diferente de 99999999000191', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='597'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120279, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '598', SUBSTR ('598-Rejeição: NF-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='598')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('598-Rejeição: NF-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='598'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120280, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '599', SUBSTR ('599-Rejeição: NF-e emitida em ambiente de homologação com IE do destinatário diferente de vazio', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='599')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('599-Rejeição: NF-e emitida em ambiente de homologação com IE do destinatário diferente de vazio', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='599'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120281, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '128', SUBSTR ('128-Lote de Evento Processado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='128')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('128-Lote de Evento Processado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='128'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120253, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '135', SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='135')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='135'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120254, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '136', SUBSTR ('136-Evento registrado, mas não vinculado a NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='136')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('136-Evento registrado, mas não vinculado a NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='136'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120255, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '489', SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='489')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='489'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120256, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '490', SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='490')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='490'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120257, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '491', SUBSTR ('491-Rejeição: O tpEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='491')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('491-Rejeição: O tpEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='491'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120258, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '492', SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='492')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='492'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120259, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '493', SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='493')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='493'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120260, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '494', SUBSTR ('494-Rejeição: Chave de Acesso inexistente', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='494')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('494-Rejeição: Chave de Acesso inexistente', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='494'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120261, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '501', SUBSTR ('501-Rejeição: NF-e autorizada há mais de 30 dias (720 horas)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='501')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('501-Rejeição: NF-e autorizada há mais de 30 dias (720 horas)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='501'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120262, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '572', SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='572')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='572'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120263, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '573', SUBSTR ('573-Rejeição: Duplicidade de Evento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='573')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('573-Rejeição: Duplicidade de Evento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='573'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120264, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '574', SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='574')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='574'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120265, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '575', SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='575')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='575'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120266, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '576', SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='576')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='576'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120267, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '577', SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='577')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='577'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120268, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '578', SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='578')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='578'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120269, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '579', SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='579')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='579'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120270, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '580', SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='580')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='580'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120271, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '587', SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='587')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='587'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120272, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '588', SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='588')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='588'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120282, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '594', SUBSTR ('594-Rejeição: O número de seqüencia do evento informado é maior que o permitido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='594')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('594-Rejeição: O número de seqüencia do evento informado é maior que o permitido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='594'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120283, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '597', SUBSTR ('597-Rejeição: CFOP de Importação e não informado dados de IPI', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='597')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('597-Rejeição: CFOP de Importação e não informado dados de IPI', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='597'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120284, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '599', SUBSTR ('599-Rejeição: CFOP de Importação e não informado dados de II', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='599')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('599-Rejeição: CFOP de Importação e não informado dados de II', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='599'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120285, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '601', SUBSTR ('601-Rejeição: Total do II difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='601')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('601-Rejeição: Total do II difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='601'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120286, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '602', SUBSTR ('602-Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='602')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('602-Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='602'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120287, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '603', SUBSTR ('603-Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='603')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('603-Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='603'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120288, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '604', SUBSTR ('604-Rejeição: Total do vOutro difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='604')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('604-Rejeição: Total do vOutro difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='604'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120289, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '605', SUBSTR ('605-Rejeição: Total do vServ difere do somatório do vProd dos itens sujeitos ao ISSQN', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='605')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('605-Rejeição: Total do vServ difere do somatório do vProd dos itens sujeitos ao ISSQN', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='605'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120290, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '606', SUBSTR ('606-Rejeição: Total do vBC do ISS difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='606')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('606-Rejeição: Total do vBC do ISS difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='606'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120291, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '607', SUBSTR ('607-Rejeição: Total do ISS difere do somatório dos itens', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='607')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('607-Rejeição: Total do ISS difere do somatório dos itens', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='607'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120292, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '608', SUBSTR ('608-Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='608')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('608-Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='608'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120293, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '609', SUBSTR ('609-Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='609')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('609-Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='609'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120294, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '610', SUBSTR ('610-Rejeição: Total da NF difere do somatório dos Valores compõe o Total da NF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='610')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('610-Rejeição: Total da NF difere do somatório dos Valores compõe o Total da NF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='610'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120295, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '611', SUBSTR ('611-Rejeição: cEAN inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='611')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('611-Rejeição: cEAN inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='611'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120296, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '612', SUBSTR ('612-Rejeição: cEANTrib inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='612')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('612-Rejeição: cEANTrib inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='612'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120297, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '613', SUBSTR ('613-Rejeição: Chave de Acesso difere da existente em BD [9999999999999999999999999999]', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='613')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('613-Rejeição: Chave de Acesso difere da existente em BD [9999999999999999999999999999]', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='613'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120298, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '614', SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='614')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='614'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120299, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '615', SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='615')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='615'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120300, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '616', SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='616')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='616'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120301, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '617', SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='617')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='617'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120302, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '618', SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='618')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='618'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120303, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '619', SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0)', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='619')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0)', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='619'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120304, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '621', SUBSTR ('621-Rejeição: CPF Emitente não cadastrado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='621')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('621-Rejeição: CPF Emitente não cadastrado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='621'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120305, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '622', SUBSTR ('622-Rejeição: IE emitente não vinculada ao CPF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='622')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('622-Rejeição: IE emitente não vinculada ao CPF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='622'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120306, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '623', SUBSTR ('623-Rejeição: CPF Destinatário não cadastrado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='623')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('623-Rejeição: CPF Destinatário não cadastrado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='623'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120307, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '624', SUBSTR ('624-Rejeição: IE Destinatário não vinculada ao CPF', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='624')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('624-Rejeição: IE Destinatário não vinculada ao CPF', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='624'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120308, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '625', SUBSTR ('625-Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='625')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('625-Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='625'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120309, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '626', SUBSTR ('626-Rejeição: O CFOP de operação isenta para ZFM deve ser 6109 ou 6110', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='626')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('626-Rejeição: O CFOP de operação isenta para ZFM deve ser 6109 ou 6110', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='626'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120310, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '627', SUBSTR ('627-Rejeição: O valor do ICMS desonerado deve ser informado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='627')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('627-Rejeição: O valor do ICMS desonerado deve ser informado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='627'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120311, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '628', SUBSTR ('628-Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='628')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('628-Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='628'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120312, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '629', SUBSTR ('629-Rejeição: Valor do Produto difere do produto Valor Unitário de Comercialização e Quantidade Comercial', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='629')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('629-Rejeição: Valor do Produto difere do produto Valor Unitário de Comercialização e Quantidade Comercial', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='629'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120313, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '630', SUBSTR ('630-Rejeição: Valor do Produto difere do produto Valor Unitário de Tributação e Quantidade Tributável', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='630')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('630-Rejeição: Valor do Produto difere do produto Valor Unitário de Tributação e Quantidade Tributável', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='630'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120314, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '635', SUBSTR ('635-Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='635')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('635-Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='635'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120315, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '128', SUBSTR ('128-Lote de Evento Processado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='128')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('128-Lote de Evento Processado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='128'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120316, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '135', SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='135')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('135-Evento registrado e vinculado a NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='135'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120317, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '136', SUBSTR ('136-Evento registrado, mas não vinculado a NF-e Código MOTIVOS DE NÃO ATENDIMENTO DA SOLICITAÇÃO', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='136')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('136-Evento registrado, mas não vinculado a NF-e Código MOTIVOS DE NÃO ATENDIMENTO DA SOLICITAÇÃO', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='136'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120318, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '489', SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='489')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='489'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120319, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '490', SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='490')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='490'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120320, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '491', SUBSTR ('491-Rejeição: O tpEvento informado inválido ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='491')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('491-Rejeição: O tpEvento informado inválido ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='491'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120321, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '492', SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='492')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='492'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120322, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '493', SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='493')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='493'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120323, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '494', SUBSTR ('494-Rejeição: Chave de Acesso inexistente ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='494')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('494-Rejeição: Chave de Acesso inexistente ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='494'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120324, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '501', SUBSTR ('501-Rejeição: Prazo de cancelamento superior ao previsto na Legislação ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='501')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('501-Rejeição: Prazo de cancelamento superior ao previsto na Legislação ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='501'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120163, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '503', SUBSTR ('503-Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='503')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('503-Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='503'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120325, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '572', SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='572')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='572'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120326, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '573', SUBSTR ('573-Rejeição: Duplicidade de Evento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='573')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('573-Rejeição: Duplicidade de Evento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='573'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120327, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '574', SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='574')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='574'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120328, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '575', SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='575')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='575'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120329, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '576', SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='576')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='576'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120330, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '577', SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='577')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='577'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120331, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '578', SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='578')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='578'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120332, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '579', SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='579')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='579'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120333, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '580', SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='580')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='580'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120334, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '594', SUBSTR ('594-Rejeição: O número de sequencia do evento informado é maior que o permitido ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='594')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('594-Rejeição: O número de sequencia do evento informado é maior que o permitido ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='594'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120298, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '614', SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='614')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='614'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120299, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '615', SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou Ano maior que Ano corrente) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='615')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou Ano maior que Ano corrente) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='615'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120300, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '616', SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou Mês maior que 12) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='616')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou Mês maior que 12) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='616'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120301, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '617', SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='617')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='617'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120302, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '618', SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='618')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='618'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120303, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '619', SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='619')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='619'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120335, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '642', SUBSTR ('642-Rejeição: Falha na Consulta do Registro de Passagem, tente novamente após 5 minutos', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='642')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('642-Rejeição: Falha na Consulta do Registro de Passagem, tente novamente após 5 minutos', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='642'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1100038, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '220', SUBSTR ('220-Rejeição: Prazo de Cancelamento Superior ao Previsto na Legislação', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='220')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('220-Rejeição: Prazo de Cancelamento Superior ao Previsto na Legislação', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='220'
;


	
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120315, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '128', SUBSTR ('128-Lote de Evento Processado 135 Evento registrado e vinculado a NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='128')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('128-Lote de Evento Processado 135 Evento registrado e vinculado a NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='128'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120317, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '136', SUBSTR ('136-Evento registrado, mas não vinculado a NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='136')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('136-Evento registrado, mas não vinculado a NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='136'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120336, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '137', SUBSTR ('137-Nenhum documento localizado para o Destinatário ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='137')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('137-Nenhum documento localizado para o Destinatário ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='137'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120337, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '138', SUBSTR ('138-Documento localizado para o Destinatário ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='138')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('138-Documento localizado para o Destinatário ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='138'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120338, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '139', SUBSTR ('139-Pedido de Download processado ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='139')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('139-Pedido de Download processado ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='139'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120339, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '140', SUBSTR ('140-Download disponibilizado', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='140')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('140-Download disponibilizado', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='140'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120318, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '489', SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='489')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('489-Rejeição: CNPJ informado inválido (DV ou zeros) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='489'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120319, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '490', SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='490')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('490-Rejeição: CPF informado inválido (DV ou zeros) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='490'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120320, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '491', SUBSTR ('491-Rejeição: O tpEvento informado inválido ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='491')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('491-Rejeição: O tpEvento informado inválido ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='491'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120321, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '492', SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='492')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('492-Rejeição: O verEvento informado inválido', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='492'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120322, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '493', SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='493')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('493-Rejeição: Evento não atende o Schema XML específico ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='493'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120323, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '494', SUBSTR ('494-Rejeição: Chave de Acesso inexistente ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='494')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('494-Rejeição: Chave de Acesso inexistente ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='494'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120325, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '572', SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='572')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('572-Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='572'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120326, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '573', SUBSTR ('573-Rejeição: Duplicidade de Evento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='573')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('573-Rejeição: Duplicidade de Evento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='573'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120327, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '574', SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='574')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('574-Rejeição: O autor do evento diverge do emissor da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='574'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120328, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '575', SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='575')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('575-Rejeição: O autor do evento diverge do destinatário da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='575'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120329, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '576', SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='576')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('576-Rejeição: O autor do evento não é um órgão autorizado a gerar o evento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='576'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120330, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '577', SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='577')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('577-Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='577'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120331, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '578', SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='578')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('578-Rejeição: A data do evento não pode ser maior que a data do processamento ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='578'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120332, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '579', SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='579')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('579-Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='579'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120333, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '580', SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='580')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('580-Rejeição: O evento exige uma NF-e autorizada ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='580'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120340, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '587', SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='587')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('587-Rejeição: Usar somente o namespace padrão da NF-e ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='587'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120341, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '588', SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='588')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('588-Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='588'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120342, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '589', SUBSTR ('589-Rejeição: Número do NSU informado superior ao maior NSU da base de dados da SEFAZ ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='589')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('589-Rejeição: Número do NSU informado superior ao maior NSU da base de dados da SEFAZ ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='589'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120343, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '593', SUBSTR ('593-Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='593')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('593-Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='593'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120334, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '594', SUBSTR ('594-Rejeição: O número de sequencia do evento informado é maior que o permitido ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='594')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('594-Rejeição: O número de sequencia do evento informado é maior que o permitido ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='594'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120344, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '595', SUBSTR ('595-Rejeição: Obrigatória a informação da justificativa do evento. ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='595')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('595-Rejeição: Obrigatória a informação da justificativa do evento. ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='595'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120345, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '596', SUBSTR ('596-Rejeição: Evento apresentado fora do prazo: [prazo vigente] ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='596')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('596-Rejeição: Evento apresentado fora do prazo: [prazo vigente] ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='596'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120298, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '614', SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='614')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('614-Rejeição: Chave de Acesso inválida (Código UF inválido) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='614'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120299, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '615', SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou Ano maior que Ano corrente) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='615')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou Ano maior que Ano corrente) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='615'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120300, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '616', SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou Mês maior que 12) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='616')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou Mês maior que 12) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='616'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120301, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '617', SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='617')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='617'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120302, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '618', SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='618')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('618-Rejeição: Chave de Acesso inválida (modelo diferente de 55) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='618'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120303, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '619', SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='619')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('619-Rejeição: Chave de Acesso inválida (número NF = 0) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='619'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120346, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '631', SUBSTR ('631-Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='631')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('631-Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='631'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120347, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '632', SUBSTR ('632-Rejeição: Solicitação fora de prazo, a NF-e não está mais disponível para download ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='632')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('632-Rejeição: Solicitação fora de prazo, a NF-e não está mais disponível para download ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='632'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120348, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '633', SUBSTR ('633-Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='633')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('633-Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='633'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120349, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '634', SUBSTR ('634-Rejeição: Destinatário da NF-e não tem o mesmo CNPJ raiz do solicitante do download ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='634')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('634-Rejeição: Destinatário da NF-e não tem o mesmo CNPJ raiz do solicitante do download ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='634'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120350, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '640', SUBSTR ('640-Rejeição: Evento de "Ciência da Operação" não pode ser informado após a manifestação final do destinatário (Confirmação, Operação não Realizada ou Desconhecimento) ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='640')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('640-Rejeição: Evento de "Ciência da Operação" não pode ser informado após a manifestação final do destinatário (Confirmação, Operação não Realizada ou Desconhecimento) ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='640'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120351, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '641', SUBSTR ('641-Rejeição: Consumo Indevido 645', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='641')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('641-Rejeição: Consumo Indevido 645', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='641'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120352, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '645', SUBSTR ('645-Rejeição: CNPJ do Certificado Digital não é emitente de NF-e', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='645')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('645-Rejeição: CNPJ do Certificado Digital não é emitente de NF-e', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='645'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120353, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '646', SUBSTR ('646-Rejeição: NF-e Cancelada, arquivo indisponível para download ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='646')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('646-Rejeição: NF-e Cancelada, arquivo indisponível para download ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='646'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120354, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '647', SUBSTR ('647-Rejeição: NF-e Denegada, arquivo indisponível para download ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='647')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('647-Rejeição: NF-e Denegada, arquivo indisponível para download ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='647'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120355, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '650', SUBSTR ('650-Rejeição: Evento de "Ciência da Operação" para NF-e Cancelada ou Denegada ', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='650')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('650-Rejeição: Evento de "Ciência da Operação" para NF-e Cancelada ou Denegada ', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='650'
;


INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType)
SELECT 1120356, 0, 0, 'Y', SYSDATE, 100, SYSDATE, 100, '651', SUBSTR ('651-Rejeição: Evento de "Desconhecimento da Operação" para NF-e Cancelada ou Denegada', 0, 60), NULL, 1100004, NULL, NULL, 'LBRA' FROM DUAL WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value='651')
;
UPDATE AD_Ref_List SET Name=SUBSTR ('651-Rejeição: Evento de "Desconhecimento da Operação" para NF-e Cancelada ou Denegada', 0, 60) WHERE AD_Reference_ID=1100004 AND Value='651'
;


EXIT