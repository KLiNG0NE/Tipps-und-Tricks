@ECHO OFF
REM *×**********************************×***************************************
REM * Datei:  my_preset.bat                                                    *
REM * Datum:  2024-11-13                                                       *
REM * Author: KLiNG0NE                                                         *
REM * Info:                                                                    *
REM * Diese Batch-Datei startet Fooocus mit vorgegebenen Voreinstellungen.     *
REM *×**********************************×***************************************
REM
TITLE Fooocus - deutsch
ECHO     ______                                 
ECHO    / ____/___  ____  ____  _______  _______
ECHO   / /_  / __ \/ __ \/ __ \/ ___/ / / / ___/
ECHO  / __/ / /_/ / /_/ / /_/ / /__/ /_/ (__  ) 
ECHO /_/    \____/\____/\____/\___/\__,_/____/  
ECHO wird in 'deutscher Sprache' gestartet. - [Strg] + [C] zum Beenden
.\python_embeded\python.exe -s Fooocus\entry_with_update.py --language de
PAUSE
