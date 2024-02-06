SET MODE_COMMUN=PROD

REM #########################################################################
REM Ici, on peut forcer des dossiers à utiliser certaines version du communs.

IF NOT DEFINED DFS SET DFS=NON
REM SET DFS=NON
REM #########################################################################
REM Ici, on peut forcer des dossiers à utiliser les serveurs DFS.
REM IF %NUMCMD% EQU 71413 SET DFS=OUI
IF %NUMCMD% EQU 78070 SET DFS=OUI

rem=========================================================================== 
rem  MODEL
rem===========================================================================
::IF "%MODE%" EQU "DEV" IF %NUMCMD% EQU 71413 SET MODE_COMMUN=WIP
::IF "%MODE%" EQU "DEV" IF %NUMCMD% EQU 71413 SET MODE_COMMUN=RECETTE

rem=========================================================================== 
rem  REPETITIF
rem===========================================================================

::IF "%MODE%" EQU "DEV" IF %NUMCMD% EQU 71413 SET MODE_COMMUN=WIP

rem=========================================================================== 
rem  REPETITIF DEV et TEST
rem===========================================================================

::IF "%MODE%" EQU "DEV" IF %NUMCMD% EQU 72805 SET MODE_COMMUN=RECETTE

rem=========================================================================== 
rem  PONCTUEL
rem===========================================================================

::IF "%MODE%" EQU "DEV" IF %NUMCMD% EQU 72805 SET MODE_COMMUN=WIP

rem=========================================================================== 
rem  Chaine de test
rem===========================================================================
rem Chaine de test dans v:\_Communs_Traitements\Outils\TEST_Traitement\TEST_Traitement\CMDE_77431

IF %NUMCMD% EQU 77431 SET MODE_COMMUN=WIP

rem=========================================================================== 
rem  Chaine utilisant les serveurs DFS
rem===========================================================================
rem Michelin Equipement utilise les serveur DFS
IF %NUMCMD% EQU 75485 SET DFS=OUI
IF %NUMCMD% EQU 77779 SET DFS=OUI
::JRMC
IF "%MODE%" EQU "TEST" IF %NUMCMD% EQU 73173 SET DFS=OUI
::QIS
IF "%MODE%" EQU "TEST" IF %NUMCMD% EQU 75595 SET DFS=OUI
::REX_ROTARY
IF "%MODE%" EQU "TEST" IF %NUMCMD% EQU 73773 SET DFS=OUI
::CNP_LISTING
IF %NUMCMD% EQU 72450 SET DFS=OUI


REM Fin de la zone de forcage.
REM #########################################################################

REM On s'assure qu'il n'y a pas d'espace dans le mode commun.
SET MODE_COMMUN=%MODE_COMMUN: =%

rem F NOT DEFINED TYPE_TRAITEMENT (
rem    SET TYPE_TRAITEMENT=Traitement
rem  ELSE IF /I "%TYPE_TRAITEMENT%:~0,3" EQU "REP" (
rem    SET TYPE_TRAITEMENT=Reporting
rem 

for /f %%i in ('hostname') do set hostname=%%i
if /i "%hostname%" equ "Fileprocess1-a" if /i "%MODE_COMMUN%" neq "PROD" (
    \\SOFTSERVER-A\Development\TagG-Informatique\ProductionFileProcessing\Tools\SendEmailSmtp\SendEmailSmtp.exe ^
        -e"PROGRAMMEURS-ALBENS@Tagginfo.fr" -r"PROGRAMMEURS-ALBENS@Tagginfo.fr"^
        -s"[ERREUR] - Le traitement %NUMCMD% ne peut pas se lancer."^
        -m"Le traitement se déroule sur %HOSTNAME%, avec la version %MODE_COMMUN% du commun, cette configuration n'est pas compatible, merci de basculer sur FP4.|"^
        -m"Répertoire du traitement : %CD:V:=\\sourceserver-a\clients%"
    exit
)

rem=========================================================================== 
rem  CALL variable DEMARAGE
rem===========================================================================

SET CHEMIN_COMMUN_MIGR=\\sourceserver-a\Clients\_Communs_Traitements\%MODE_COMMUN%
CALL %CHEMIN_COMMUN_MIGR%\Traitement\Variables_Demarrage.bat