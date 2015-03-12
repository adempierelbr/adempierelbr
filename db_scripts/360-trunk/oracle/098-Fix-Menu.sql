-- 12/03/2015 10h52min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID NOT IN (SELECT AD_Menu_ID FROM AD_Menu WHERE AD_Client_ID=0)
;

-- 12/03/2015 10h52min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2015-03-12 10:52:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120018,0,TO_DATE('2015-03-12 10:52:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000014, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000010
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000014, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000011
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000014, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000012
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h54min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000039, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000041
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000039, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000040
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h54min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120196, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120196, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120195
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h54min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 12/03/2015 10h55min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53083
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 12/03/2015 10h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h55min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h55min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h56min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h56min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 12/03/2015 10h56min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 12/03/2015 10h56min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 12/03/2015 10h56min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 12/03/2015 10h56min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 12/03/2015 10h59min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h59min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h59min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 10h59min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h0min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 12/03/2015 11h1min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Menu_Trl WHERE AD_Menu_ID=1000033
;

-- 12/03/2015 11h1min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Menu WHERE AD_Menu_ID=1000033
;

-- 12/03/2015 11h1min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_TreeNodeMM n WHERE Node_ID=1000033 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=n.AD_Tree_ID AND t.TreeType='MM')
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h1min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120010
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 12/03/2015 11h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

SELECT register_migration_script('098-Fix-Menu.sql') FROM dual;