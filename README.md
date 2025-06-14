Public IP Address Email Notification Script
Author: Alan O'Brien
Language: PowerShell

Overview
This PowerShell script retrieves your machine’s current public IP address using an external API and automatically sends it to a specified email address. The script is ideal for remote access scenarios, monitoring dynamic IP addresses, or keeping track of changes to your home or office public IP.

Features
Fetches the current public IP using ipify.org.

Sends an email notification with the IP address, timestamped for easy tracking.

Configurable SMTP settings (currently set for Gmail with SSL).

Simple and minimal dependencies—runs natively in PowerShell.

Prerequisites
PowerShell (Windows PowerShell 5.1+ or PowerShell Core)

Outbound internet connectivity (to reach the ipify API and SMTP server)

Valid SMTP credentials (for Gmail or your chosen provider)

Usage
Clone or download the script.

Edit the email addresses and SMTP credentials as needed.

⚠️ Security Note: For production use, do not store plain text passwords in scripts. Use secure credential storage (such as Windows Credential Manager or environment variables).

Run the script in PowerShell:

powershell
Copy
Edit
.\Send-PublicIP-Email.ps1
Example Output
The script sends an email like:

Subject: Public IP Address Update - 2025-06-15 08:24
Body:
Your current public IP address is: 203.0.113.123

Security Considerations
The script currently stores the SMTP password in plain text for demonstration purposes.
Best practice: Replace this with a secure method for handling credentials before deploying in production.

Consider setting up App Passwords or OAuth for Gmail accounts if 2FA is enabled.

License
MIT License (or specify your preferred license)
