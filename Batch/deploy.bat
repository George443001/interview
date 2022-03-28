cd %LIVEPATH%\live
taskkill /im x*.exe /F
del * /q
robocopy ..\test\ .
if exist e:\dump\ rmdir e:\dump\
echo SQA1 192.168.1.32 > tcp_cfg.d
cls
echo Checking build_tabcorp.out for errors.
findstr /N "Rejected" build_tabcorp.out > e:\report.rpt
findstr /N "Failed" build_tabcorp.out > e:\report.rpt
findstr /N "Process" build_tabcorp.out > e:\report.rpt
findstr /N "Errors" build_tabcorp.out > e:\report.rpt
notepad e:\report.rpt

start xcli




