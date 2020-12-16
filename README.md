# Team Zed

Penetration Testing and Defensive Recommendations</br>
December 15, 2020

## Project Overview
Scenario - Our team is a small security firm that accepted a new contract to help "ABC Corp." test its infrastructure and implement more sophisticated security systems. This is a "purple team" engagement. We were tasked with completing a penetration test, composing relevant deliverables, and presenting the findings to your client. We implemented threat detection and advance malware analysis tools in the environment as part of boosting the client's defenses.

For this scenario, our team was provided access to a unique black box AWS cloud instance for penetration testing.

In the final segment of the project week, our team gained access to *Vintage Upholstery & Leather Nationwide Corporation's* systems to implement defensive systems in the environment.

## Project Links
[Team Zed Final Documents](https://drive.google.com/drive/folders/1jVNCq9gw6gccJNmZu4katQDqXDTb58u1?usp=sharing) - a Google Drive Project Folder containing the following documents:
* Penetration Test Report
* Threat Intelligence & Incident Response Report

## Scripts and rules
[Malware Scan](Scripts/malware_scan), [ClamAV w/ Yara integration](Scripts/clamAV-automation.ps1) - [Jin Kim](https://github.com/jinwoov)</br>
This script aims to scan for the malware using the VirusTotal API and hash value from of the file. The response from the API will determine if the file has malware. Additionally, Yara rule is ran against the file to further validate if it has malware.  

[Pcap Parser](Scripts/pcap_parse.py) - [Courtney Hans](https://github.com/CourtHans)</br>
This script makes pcap investigation more efficient by taking in parameters that an investigator deems "important" and combing through a pcap file to return an assessment in the terminal of how many packets meet that criteria.

[Snort rules](Scripts/snort.rules) - [Bubacarr Darboe](https://github.com/bdarboe)</br>
This scripts monitor the activities on the network and generate alerts of unauthorized activities. The alerts will depend on the rules that were specified in the snort file.

[Yara Rule Project](Scripts/YaraRuleProject.yar), [YaraRule2](Scripts/YaraRule2.yar), [YaraRule3](Scripts/YaraRule3.yar) - [Kim Dills](https://github.com/kddills)</br>
YARA rules written and configured to scan for known malware keywords to detect against advanced malware from entering and spreading on the network.

## Resources & assets
 
**Applications**</br>
Oracle VirtualBox</br>
*Kali Linux 20.20.4 virtual machine*</br>
*Parrot OS virtual machine*  
Amazon Web Services VPN</br>
*Windows 7*</br>
*Win Server 2008*</br>
*Ubuntu File Server*</br>
*Ubuntu Web Server*</br>
Microsoft Threat Modeling Tool</br>
GitHub</br>
Google Docs & Slides</br>
 
**Tools & coding languages**</br>
[BurpSuite](https://portswigger.net/burp)</br>
[CQTools from CQure Academy](https://cqureacademy.com/blog/black-hat-asia-2019-tools)</br>
[DirBuster](https://tools.kali.org/web-applications/dirbuster#:~:text=DirBuster%20is%20a%20multi%20threaded,pages%20and%20applications%20hidden%20within.)</br>
[Maltego](https://www.maltego.com/)
[Metasploit](https://www.metasploit.com/)</br>
[Mimikatz](https://github.com/gentilkiwi/mimikatz)</br>
[NMap](https://nmap.org/)</br>
[THC Hydra](https://tools.kali.org/password-attacks/hydra)</br>
[PowerShell ISE](https://docs.microsoft.com/en-us/powershell/scripting/windows-powershell/ise/exploring-the-windows-powershell-ise?view=powershell-7.1)
[Python 3.8.6](https://www.python.org/downloads/release/python-386/)</br>
[Remmina](https://remmina.org/)</br>
[Security Onion](https://securityonionsolutions.com/)
[Snort](https://www.snort.org/)
[Splunk](https://www.splunk.com/en_us)
[Tenable Nessus](https://www.tenable.com/)</br>
[Windows Defender Firewall](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security)</br>
[Wireshark](https://www.wireshark.org/)</br>
[ZAP](https://www.zaproxy.org/)</br>
[YARA](https://yara.readthedocs.io/en/stable/)</b>

## Team Members

### Bubacarr Darboe
Bubacarr is a Cybersecurity Professional and a Semiconductor Engineering Technician. As a technology enthusiast with an entrepreneurial mindset and a degree in Technology Management, Bubacarr had the opportunity to work on a startup project assuming a managerial and business development role.

[Bubacarr's GitHub profile](https://github.com/bdarboe)</br>
[Bubacarr's LinkedIn profile](https://www.linkedin.com/in/bdarboe/)

### Kim Dills
Kim is a volunteer at CyberSecurity Non-Profit (CSNP) in the role of Education Manager.  Her passion for learning has led her to discover how to help people stay cyber safe and to become a cybersecurity engineer.

[Kim's GitHub profile](https://github.com/kddills)</br>
[Kim's LinkedIn profile](https://www.linkedin.com/in/kimberlydills/)

### Courtney Hans
Courtney is an operations and cybersecurity professional with deep history in the experiential product space. She has a knack for understanding business and customer pain points and delivering creative, effective solutions. She integrates security operations with business needs, bridging gaps in communication between the two, and shepherding initiatives from ideation to implementation. In short, Courtney simplifies complexity to drive decisions, action, and results.

[Courtney's GitHub profile](https://github.com/CourtHans)</br>
[Courtney's LinkedIn profile](https://www.linkedin.com/in/courtney-hans/)

### Jin Kim
Jin is an aspiring cloud security engineer who's always in search of learn new skills and expand on my knowledge in security. During my software development course, I learned how web application vulnerabilities can be exploited from multiple attack vectors and I found it fascinating. My network then eventually led me to security courses and I learned about creating secure network and also maintaining integrity of data on Cloud. I would love to expand my knowledge in containerization and agile development in the future while continually mentoring others to break into tech scene.

[Jin's GitHub profile](https://github.com/jinwoov)</br>
[Jin's LinkedIn profile](https://www.linkedin.com/in/jinkim808/)