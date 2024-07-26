@Echo Off
Echo "Closing Outlook."
taskkill /IM "OUTLOOK.EXE"
timeout /t 10
Echo "Archiving .PST files."
copy /Y "%userprofile%\Outlook Files\*.pst" "%userprofile%\Desktop\Archive\PSTs\*.archive"
timeout /t 10
Echo "Opening Outlook."
start /B "" "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
Echo "Task Complete!"
timeout /t 10
