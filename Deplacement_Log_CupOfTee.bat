IF NOT EXIST %CHEMIN_REP_JOUR_LOG_CUPOFTEE%\REP_JOUR_UNC_CUPOFTEE_%ANNEE_CUPOFTEE%_%MOIS_CUPOFTEE%_%JOUR_CUPOFTEE%_%HEURE_CUPOFTEE%H%MINUTE_CUPOFTEE%M%SECONDE_CUPOFTEE%.txt EXIT /B 1

SET /p Lecture_CHEMIN_REP_JOUR_UNC=<%CHEMIN_REP_JOUR_LOG_CUPOFTEE%\REP_JOUR_UNC_CUPOFTEE_%ANNEE_CUPOFTEE%_%MOIS_CUPOFTEE%_%JOUR_CUPOFTEE%_%HEURE_CUPOFTEE%H%MINUTE_CUPOFTEE%M%SECONDE_CUPOFTEE%.txt
MOVE /Y %LOG_CUPOFTEE% %Lecture_CHEMIN_REP_JOUR_UNC%\Log_CUPOFTEE\ 
del %CHEMIN_REP_JOUR_LOG_CUPOFTEE%\REP_JOUR_UNC_CUPOFTEE_%ANNEE_CUPOFTEE%_%MOIS_CUPOFTEE%_%JOUR_CUPOFTEE%_%HEURE_CUPOFTEE%H%MINUTE_CUPOFTEE%M%SECONDE_CUPOFTEE%.txt

