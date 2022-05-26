net use y: $env:nas_path\iaas /user:$env:mount_username $env:mount_password /persistent:no
xcopy y:\selfserviceimages\amp c:\temp\amp\ /s /e 
net use y: /d 
c:\\temp\\amp\\amp_Windows_Servers-PROTECT.exe /R /S
Start-Sleep 300