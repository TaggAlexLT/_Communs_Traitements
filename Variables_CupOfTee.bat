
SET CUPOFTEE=\\SOFTSERVER-A\Development\TagG-Informatique\ProductionFileProcessing\Tools\CupOfTee\Release\CupOfTee.exe
SET LIB_CUPOFTEE=
SET CHEMIN_REP_JOUR_LOG_CUPOFTEE=

IF NOT DEFINED Serv SET Serv=U:
IF NOT DEFINED CHEMIN_REP_ORIG SET CHEMIN_REP_ORIG=%CHEMIN_DOSSIER%
IF NOT DEFINED LIB_CUPOFTEE SET LIB_CUPOFTEE=Log_CUPOFTEE

SET ANNEE_L=%DATE:~6,4%
SET ANNEE_CUPOFTEE=%ANNEE_L: =0%
SET MOIS_L=%DATE:~3,2%
SET MOIS_CUPOFTEE=%MOIS_L: =0%
SET JOUR_L=%DATE:~0,2%
SET JOUR_CUPOFTEE=%JOUR_L: =0%
SET HEURE_L=%TIME:~0,2%
SET HEURE_CUPOFTEE=%HEURE_L: =0%
SET MINUTE_L=%TIME:~3,2%
SET MINUTE_CUPOFTEE=%MINUTE_L: =0%
SET SECONDE_L=%TIME:~6,2%
SET SECONDE_CUPOFTEE=%SECONDE_L: =0%

SET CHEMIN_REP_JOUR_LOG_CUPOFTEE=%Serv%\%CHEMIN_REP_ORIG%
SET LIB_CUPOFTEE=%LIB_CUPOFTEE%_%ANNEE_CUPOFTEE%_%MOIS_CUPOFTEE%_%JOUR_CUPOFTEE%_%HEURE_CUPOFTEE%H%MINUTE_CUPOFTEE%M%SECONDE_CUPOFTEE%
SET LOG_CUPOFTEE=%Serv%\%CHEMIN_REP_ORIG%\%LIB_CUPOFTEE%.txt

