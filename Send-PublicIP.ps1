# Get current public IP
$ip = Invoke-RestMethod -Uri "https://api.ipify.org?format=json" | Select-Object -ExpandProperty ip

# Email settings
$smtpServer = "smtp.gmail.com"
$smtpPort = 587
$from = "<email address>"
$to = "<email address>"
$subject = "Public IP Address Update - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
$body = "Your current public IP address is: $ip"

# Email credentials (securely store these for production use)(get this by creating an app password in gmail)
$securePassword = ConvertTo-SecureString "XXXX XXXX XXXX XXXX" -AsPlainText -Force 
$cred = New-Object System.Management.Automation.PSCredential($from, $securePassword)

# Send email
Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $smtpServer -Port $smtpPort -UseSsl -Credential $cred
