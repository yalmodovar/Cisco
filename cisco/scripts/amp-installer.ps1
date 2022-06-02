net use y: $env:nas_path\CGOAnsible$ /user:$env:mount_username $env:mount_password /persistent:no
xcopy y:\Cisco_AMP\amp_Windows_Servers-PROTECT.exe c:\temp\amp\ /s /e 
net use y: /d 
c:\\temp\\amp\\amp_Windows_Servers-PROTECT.exe /R /S
Start-Sleep 300