AdempiereLBR
============

[![Build Status](https://drone.io/bitbucket.org/AdempiereLBR/adempierelbr/status.png)](https://drone.io/bitbucket.org/AdempiereLBR/adempierelbr/latest)

AdempiereLBR é a extensão para o projeto Adempiere contendo a tropicalização para o Brasil. Esta versão do LBR é compatível com o Adempiere 360 LTS.

Instalando
==========

O AdempiereLBR depende do [Adempiere 360 LTS](https://bitbucket.org/AdempiereLBR/adempiere360) para funcionar, caso já tenho o Adempiere funcionando pule para o segundo passo.

 1. Instalação do Adempiere
    1. [Download](https://bitbucket.org/AdempiereLBR/adempiere360/downloads)
    1. [Instruções em Inglês][1]
    1. [Vídeo em Português para Instalação Windows](https://www.youtube.com/watch?v=ydpClOjXK48)
 1. [Copie a versão desejada do LBR, ex. LBR_201506.tgz][2]
 1. Descompacte o arquivo copiado e coloque os arquivos `customization.jar` e `zkcustomization.jar` na pasta lib da sua instalação do Adempiere.
 1. Execute o `RUN_silentsetup.sh` ou  `RUN_silentsetup.bat`

Banco de Dados Padrão
=====================

Cada versão da LBR será disponibilizada com um banco de dados compatível. Siga o procedimento para restaurar o banco de dados vazio:

 1. [Copie o arquivo de banco de dados compatível com a sua versão do LBR, ex. Seed_201506.tgz][2]
 2. Descompacte o arquivo copiado e coloque o arquivo `ExpDat.dmp` na pasta data da sua instalação do Adempiere.
 3. Execute o comando `RUN_DBRestore.sh` ou `RUN_DBRestore.bat`
 
Atualizar Banco de Dados existente
==================================

Para atualizar um banco de dados existente é necessário executar os scripts da pasta migration. Os scripts são organizados nesta pasta a cada nova TAG. Ex. caso esteja atualizando da versão LBR\_201506 para a versão LBR\_201508, será necessário executar os scripts das TAGs LBR\_201507 e LBR\_201508.

Caso sua versão da LBR seja mais antiga (anterior a LBR\_201506) você deverá atualizar pela pasta migration/000000.

Principais Recursos
===================

1. Cálculo de Impostos para o padrão brasileiro

	* Cálculo para PIS, COFINS, ICMS, IPI, ISS, IR e CSLL
	* Cálculo de Impostos para Importação Direta e via Courrier
	* Cálculo do Diferencial de Alíquota (EC 87/2015)
	
1. Emissão da NF-e versão 3.10

    * Emissão
	* Cancelamento
	* Inutilização
	* Carta de Correção Eletrônica
	* Eventos de Manifestação

1. SPEDs

	* SPED Fiscal EFD
	* SPED Fiscal Contribuições
	* SPED Contábil

1. Emissão de Boletos
1. Custo Médio

Como ajudar
===========

Existem várias maneiras de ajudar, você pode reportar um BUG [clicando aqui][3]. Caso queira enviar uma contribuição faça um [fork deste projeto][4] e envie seu [Pull Request][7]. Entenda que as contribuições serão revisadas antes de serem integradas ao projeto.

Você pode entrar em contato com os desenvolveres através do [fórum da Kenos][8].

Versões
=======

Listagem das principais mudanças. As correções menos importantes podem não constar na listagem, caso deseje verificar detalhadamente é possível verificar os commits [clicando aqui][9].

1. LBR-201605 [[Download]][54] [[Seed PostgreSQL]][55] [[Seed OracleXE]][56]

	* Melhorias na tradução
	* Correção na CalloutNFe
	* Ajuste no tamanho do campo DI
	* Aumento do tempo de pesquisa da NF-e para o recomendado pela SeFaz
	* [Mais detalhes][53]
	
1. LBR-201604 [[Download]][50] [[Seed PostgreSQL]][51] [[Seed OracleXE]][52]

	* Melhorias na tradução
	* Melhoria na janela de Informações de Parceiro de Negócios
	* Correção no preenchimento do CEST
	* Correção no preenchimento do endereço da transportadora
	* [Mais detalhes][49]

1. LBR-201603 [[Download]][46] [[Seed PostgreSQL]][47] [[Seed OracleXE]][48]

	* Melhorias na tradução
	* Correção do processo de retorno do RPS
	* Permitir o preenchimento de um e-mail avulso no re-envio do e-mail da NF-e
	* Padronização dos tamanhos das descrições da NF-e e Eventos
	* Correção das fórmulas de importação
	* Tipo de Documento Base LBR para facilitar a configuração de impostos
	* Impressão da DANFE pela janela de lote
	* Informar a UF da Placa do veículo na emissão da NF
	* [Mais detalhes][45]
	
1. LBR-201602 [[Download]][42] [[Seed PostgreSQL]][43] [[Seed OracleXE]][44]

	* Melhorias na tradução
	* Melhoria na janela de definição de impostos (filtros por script)
	* Impressão da NFS-e
	* Melhorias na exibição dos campos da janela de NF-e
	* Distinção das Informações Complementares do Fisco e do Contribuinte
	* Possibilidade para re-criar a NF pelo processo de preparar
	* [Mais detalhes][41]
	
1. LBR-201601 [[Download]][38] [[Seed PostgreSQL]][39] [[Seed OracleXE]][40]

	* Melhorias na tradução
	* Adição do campo CEST - Código Especificador da Substituição Tributária
	* Adição do campo FCI na NF
	* Adição do campo CEnq para o enquadramento do IPI
	* Possibilidade de alterar o PN entre Contribuinte de ICMS Isento ou Não-Contribuinte
	* Melhoria nos filtros e nas prioridades da janela de definição de impostos
	* Partilha de ICMS entre estados (NT2015.003)
	* [Mais detalhes][37]
	
1. LBR-201512 [[Download]][34] [[Seed PostgreSQL]][35] [[Seed OracleXE]][36]

	* Melhorias na tradução
	* Registro de Eventos de Manifestação no Ambiente Nacional
	* Mudança de Carta de Correção para Eventos
	* Adição da Centro de Custo na Requisição/Caixa/Usuário
	* Aba de Transportadora no Parceiro de Negócios
	* Reestruturação das tabelas do SPED
	* [Mais detalhes][33]
	
1. LBR-201511 [[Download]][30] [[Seed PostgreSQL]][31] [[Seed OracleXE]][32]

	* Melhorias na tradução
	* Correção do preenchimento da Transportadora na NF
	* Atualização do esquema XML para a versão PL_008g
	* Flexibilidade na pesquisa de produto
	* Atualização do processo de importação do IBPT
	* [Mais detalhes][29]
	
1. LBR-201510 [[Download]][26] [[Seed PostgreSQL]][27] [[Seed OracleXE]][28]

	* Melhorias na tradução
	* Atualização das libs Xalan e Serializer para 2.7.1
	* Remoção de classes obsoletas
	* Melhoria na DANFE
	* Correção na captura do CST para operações de entrada (IPI)
	* [Mais detalhes][25]
	
1. LBR-201509 [[Download]][22] [[Seed PostgreSQL]][23] [[Seed OracleXE]][24]

	* Melhorias na tradução
	* Novo esquema de retenções de impostos de serviços
	* Permitir acesso ao Adempiere a partir do Java 8
	* Correção na numeração dos scripts
	* Criação de Novos Tipos de Parceiro de Negócio (Menor de 18 e Estrangeiros)
	* Novo Processo de Importação de Níveis de Reabastecimento de Produto
	* Correção de Bug ao registrar Log de Erro
	* Padronização de Janelas e Sequências de Campos
	* [Mais detalhes][21]

1. LBR-201508 [[Download]][18] [[Seed PostgreSQL]][19] [[Seed OracleXE]][20]

	* Melhorias na tradução
	* Redução no mínimo de dias para protesto de boleto
	* Impressão das DANFEs via arquivo XML
	* Correção na VIEW de exibição de impostos
	* Adição da TAG Número de Volumes no XML
	* Correção da calculadora na interface web
	* Adição do Java Target na compilação
	* [Mais detalhes][17]
	
1. LBR-201507 [[Download]][14] [[Seed PostgreSQL]][15] [[Seed OracleXE]][16]

	* Melhorias na tradução
	* Correção de bugs
	* Revisão do suporte ao Oracle XE
	* Correção na adição de NF-e Referenciada
	* Melhoria no suporte para CSOSN 900
	* Correção do ícone de localização para interface web
	* [Mais detalhes][13]
	
1. LBR-201506 [[Download]][11] [[Seed PostgreSQL]][12]

	* Versão Inicial
	* [Mais detalhes][10]

Patrocinadores desta versão
===========================

 1. [Kenos Sistemas de Gestão Integrada][5]
 1. [Soliton Controles Industriais][6]

[1]: http://www.adempiere.com/Installing_ADempiere_Manually
[2]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads
[3]: https://bitbucket.org/AdempiereLBR/adempierelbr/issues
[4]: https://bitbucket.org/AdempiereLBR/adempierelbr/fork
[5]: http://www.kenos.com.br/
[6]: http://www.soliton.com.br/
[7]: https://bitbucket.org/AdempiereLBR/adempierelbr/pull-requests
[8]: http://forum.kenos.com.br/
[9]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/all
[10]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201506
[11]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201506.tgz
[12]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201506_PG.tgz
[13]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201507
[14]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201507.tgz
[15]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201507_PG.tgz
[16]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201507_ORA.tgz
[17]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201508
[18]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201508.tgz
[19]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201508_PG.tgz
[20]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201508_ORA.tgz
[21]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201509
[22]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201509.tgz
[23]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201509_PG.tgz
[24]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201509_ORA.tgz
[25]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201510
[26]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201510.tgz
[27]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201510_PG.tgz
[28]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201510_ORA.tgz
[29]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201511
[30]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201511.tgz
[31]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201511_PG.tgz
[32]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201511_ORA.tgz
[33]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201512
[34]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201512.tgz
[35]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201512_PG.tgz
[36]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201512_ORA.tgz
[37]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201601
[38]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201601.tgz
[39]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201601_PG.tgz
[40]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201601_ORA.tgz
[41]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201602
[42]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201602.tgz
[43]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201602_PG.tgz
[44]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201602_ORA.tgz
[45]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201603
[46]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201603.tgz
[47]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201603_PG.tgz
[48]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201603_ORA.tgz
[49]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201604
[50]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201604.tgz
[51]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201604_PG.tgz
[52]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201604_ORA.tgz
[53]: https://bitbucket.org/AdempiereLBR/adempierelbr/commits/tag/LBR-201604
[54]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/LBR_201604.tgz
[55]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201604_PG.tgz
[56]: https://bitbucket.org/AdempiereLBR/adempierelbr/downloads/Seed_201604_ORA.tgz