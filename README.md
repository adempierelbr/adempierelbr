AdempiereLBR
============

AdempiereLBR é a extensão para o projeto Adempiere contendo a tropicalização para o Brasil. Esta versão do LBR é compatível com o Adempiere 360 LTS.

Instalando
==========

Caso o Adempiere 360 LTS ainda não esteja funcionando, faça a instalação [seguindo as intruções aqui][1]

 1. [Copie a versão desejada do LBR, ex. LBR_201506.tgz][2]
 2. Descompacte o arquivo copiado e coloque os arquivos `customization.jar` e `zkcustomization.jar` na pasta lib da sua instalação do Adempiere.
 3. Execute o `RUN_silentsetup.sh` ou  `RUN_silentsetup.bat`

Banco de Dados Padrão
=====================

Cada versão da LBR será disponibilizada com um banco de dados compatível. Siga o procedimento para restaurar o banco de dados vazio:

 1. [Copie o arquivo de banco de dados compatível com a sua versão do LBR, ex. Seed_201506.tgz][2]
 2. Descompacte o arquivo copiado e coloque o arquivo `ExpDat.dmp` na pasta data da sua instalação do Adempiere.
 3. Execute o comando `RUN_DBRestore.sh` ou `RUN_DBRestore.bat`
 
Atualizar Banco de Dados existente
==================================

Para atualizar um banco de dados existente é necessário executar os scripts da pasta migration. Os scripts são organizados nesta pasta a cada nova TAG. Ex. caso esteja atualizando da versão LBR\_201506 para a versão LBR\_201508, será necessário executar os scripts das TAGs LBR\_201507 e LBR\_201508.

Caso sua versão da LBR seja mais antiga (anterior a LBR\_201506) você deverá atualizar pela pasta db_scripts.

Principais Recursos
===================

1. Cálculo de Impostos para o padrão brasileiro
1. Emissão da NF-e versão 3.10

    * Emissão
	* Cancelamento
	* Inutilização
	* Carta de Correção Eletrônica

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
