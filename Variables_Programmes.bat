
IF "%DATAMANAGER_BENCHMARK_DISCONNECT%" NEQ "1" SET DATAMANAGERC=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\DataManager\Bin\Prod\DataManagerC.exe

rem=========================================================================== 
rem  REM Répertoire des programmes et de leurs différentes versions
rem===========================================================================

rem===========================================================================
rem ====================================DATAMANAGER==============================================================
rem===========================================================================

SET DATAMANAGERC_CHEMIN_PROD=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\DataManager\Bin\Prod\DataManagerC.exe
SET DATAMANAGERC_CHEMIN_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\DataManager\Bin\Test\DataManagerC.exe

SET DEGENERIQUE_CHEMIN_TEST=%SERVER_PROG%\Programmes\Sources\DEGenerique\Prod\bin\Release\netcoreapp2.0\win-x64\publish\DEGenerique.exe
SET DEGENERIQUE=%SERVER_PROG%\Programmes\Sources\DEGenerique\Test\bin\Release\netcoreapp2.0\win-x64\publish\DEGenerique.exe

rem===========================================================================
rem ====================================EDITION C==============================================================
rem===========================================================================

SET EDITIONC_CHEMIN_TEST=%SERVER_DEV1%\TagG-Informatique\DocumentEdition\Bin\Programmeur-Test\x64\Release\EditionC.exe
SET EDITIONC_CHEMIN_PRODUCTION_TEST=%SERVER_DEV1%\TagG-Informatique\DocumentEdition\Bin\Production-Test\x64\Release\EditionC.exe
SET EDITIONC_CHEMIN_PRODUCTION=%SERVER_DEV1%\TagG-Informatique\DocumentEdition\Bin\Production\x64\Release\EditionC.exe
SET EDITIONC_CHEMIN_BETA=%SERVER_DEV1%\TagG-Informatique\DocumentEdition\Bin\Versions\3.1.0.122\x64\Release\editionc.exe

rem ====================================EXTRACT=============================================================
SET EXTRACTTEXTPDF_CHEMIN_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\ExtractTextPDF\Test\ExtractTextPDF.exe
SET EXTRACTTEXTPDF_CHEMIN_PROD=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\ExtractTextPDF\ExtractTextPDF.exe

rem ====================================PDFRIP=============================================================
SET PDFRIP_CHEMIN=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\PdfRip\PdfRip.exe
SET PDFRIP_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\PdfRip\Test\PdfRip.exe

rem===========================================================================
rem ====================================PRODINFO=============================================================
rem===========================================================================

SET PRODINFOC_CHEMIN_PROD=%SERVER_DEV2%\TagG-Informatique\ProductionInformation\ProdInformationsC\ProdInformationC.exe
SET PRODINFOC_CHEMIN_TEST_ALPHA=%SERVER_DEV2%\TagG-Informatique\ProductionInformation\ProdInformationsC\Alpha\ProdInformationC.exe
SET PRODINFOC_CHEMIN_TEST_VALIDATION=%SERVER_DEV2%\TagG-Informatique\ProductionInformation\ProdInformationsC\Validation\ProdInformationC.exe
SET PRODINFOC_CHEMIN_TEST_VALIDATION_PROG=%SERVER_DEV2%\TagG-Informatique\ProductionInformation\ProdInformationsC\Database_a\ValidationProgrammeurs\ProdInformationC.exe

rem===========================================================================
rem ====================================TECHROUTING=============================================================
rem===========================================================================

SET TECHROUTINGC_CHEMIN_TEST=%SERVER_DEV2%\TagG-Informatique\Routage\TechRoutingC\Test\TechRoutingC.exe
SET TECHROUTINGC_CHEMIN_BASE_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\TechRoutingC\BaseTest\TechRoutingC.exe
SET TECHROUTINGC_TEST_ALEX=%SERVER_DEV2%\TagG-Informatique\Routage\TechRoutingC\TestAlex\TechRoutingC.exe
SET TECHROUTINGC_GENERIQUE=%SERVER_DEV2%\TagG-Informatique\Routage\TechRoutingC\Generique\TechRoutingC.exe

rem ====================================PROGRAMME SPECIFIQUE=============================================================

SET CHEMIN_PROGS_SPECIFIQUE_DOSSIER=%SERVER_SOURCE%\%NOM_REP1%\%NOM_REP2%\%NOM_REP3%\%NOM_REP4%\Bibliotheques\Progs\_Exe

SET SENDEMAIL=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\SendEmailSmtp\SendEmailSmtp.exe

SET EXAMINER=%SERVER_DEV2%\TagG-Informatique\FileProcess\Examiner\Examiner.exe
SET TAGGSTAT=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\TaggStat\taggstat.exe
SET TEXTTABNEW=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\TextTabNew\TexttabNew_2016.exe
SET TEXTTAB=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\TextTab.exe
SET TAGGSORT=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\taggsort.exe
SET TAGGALEA=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\taggalea.exe
SET RAPPRO=%SERVER_DEV1%\TagG-Informatique\Programmation\Rappro.exe
SET EXTRACT=%SERVER_DEV1%\TagG-Informatique\Programmation\Extract.exe

SET SORTEXEC=%SERVER_DEV2%\TagG-Informatique\FileProcess\Sort\SortExec.exe
SET SORTEXEC_CHEMIN_BASE_TEST=%SERVER_DEV2%\TagG-Informatique\FileProcess\Sort\CfgBaseTest\SortExec.exe

SET TECHSORT=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\TechSort\TechSort.exe

SET CLEEAUTO=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\CleeAuto\2.3.3\CleeAuto.exe
SET U2A=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\u2a_v2.exe

SET GEDBAT=%SERVER_DEV1%\TagG-Informatique\Database\GEDBAT_ValidationBAT\GEDBAT_ValidationBAT.exe

SET PDFCOUNTERPAGE=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\PdfCounterPages\PdfCounterPages.exe
SET EMBEDFONT=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\EmbedFont\EmbedFont.exe
SET XML2FILE=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\XML\XmlToFile\test\XmlToFile.exe
SET MERGEPDFFILES=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\MergePdfFiles\MergePdfFiles.exe
SET MERGEPDFFILES_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\PDF\MergePdfFiles\Test\MergePdfFiles.exe

SET CALCULPOIDS=%SERVER_DEV1%\TagG-Informatique\Programmation\Calculpoids.exe

SET INDEXATION=%SERVER_PROG%\Programmes\Sources\Indexation\V2.0.0.2\Indexation\Indexation\bin\x64\Release\Indexation.exe
SET COMPTEPLI=%SERVER_PROG%\Programmes\_Exe\compte_pli_v2.exe
SET CALCULDATE=%SERVER_PROG%\Programmes\Sources\Calcul_Date\V.1.0.0.1\Calcul_Date\Calcul_Date\bin\x64\Release\Calcul_Date.exe
SET TASSEMENTPA=%SERVER_DEV1%\TagG-Informatique\Programmation\TassementPA.exe
SET TRANSLATE=%SERVER_PROG%\Programmes\_Exe\Translate.exe

SET MERGEAFPFILE=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\AFP\MergeAfpFile\MergeAfpFile.exe
SET AFPTLEINDEXER=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\AFP\AfpIndexer\AfpTleIndexer.exe
SET AFPTLEINDEXER_CHEMIN_TEST=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\AFP\AfpIndexer\test\AfpTleIndexer.exe

SET SHIPPING=%SERVER_DEV2%\TagG-Informatique\Routage\ShippingAdressFileCheckerConsole\ShippingAdressFileCheckerConsole.exe

SET WIN_SCP=%SERVER_DEV1%\TagG-Informatique\ProductionFileProcessing\Tools\winscp\WinSCP.com
SET AFFICHETAILLE=%SERVER_DEV1%\TagG-Informatique\Programmation\AfficheTaille.exe
SET TRIMMER=%SERVER_DEV1%\TagG-Informatique\Programmation\Trimmer.exe

SET RENOMEINKDRAW=%SERVER_DEV1%\TagG-Informatique\Programmation\BuskroFileManagerFramework.exe

SET XMLDESERIALIZER=%SERVER_PROG%\Programmes\_Exe\XmlDeserializer.exe

SET PROG_REPLACE=%SERVER_DEV2%\TagG-Informatique\Utilities\Replace\Replace.exe

SET ZIP="C:\Program Files\7-Zip\7z.exe"

SET CREAXML_EPOSTCONSOLE=%SERVER_DEV2%\TagG-Informatique\ProductionFileProcessing\Tools\DHL\ePostV2\CreaXml_ePostConsole.exe

SET GEDStorage_CSVIntegration=%SERVER_DEV1%\TagG-Informatique\Database\GEDStorage_CSVIntegration\GEDStorage_CSVIntegration.exe


