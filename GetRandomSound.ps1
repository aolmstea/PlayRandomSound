Add-Type -AssemblyName presentationCore
$Sound = Get-ChildItem C:\Users\alexa\Documents\Scripts\sounds -Recurse | Where-Object {$_.extension -eq ".wav"} | Select-Object -ExpandProperty FullName 
$RandomSound = $Sound | Get-Random -Count 1 

& 'C:\Program Files\VideoLAN\VLC\vlc.exe' --qt-start-minimized --play-and-exit --qt-notification=0 $RandomSound
