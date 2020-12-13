
# Author: Jin Kim
# Date: 12/13/2020
# Description: Running the Clam AV using the Yara by automating the process.

function interface()
{
    Write-Host "Clam AV Automation"
    
    $User_input = Read-Host "Which folder do you want to scan?";
    
    if($User_input -eq "")
    {
        $User_input = "C:\Users\itdept\Desktop\Demo-Tools\ClamAv\test"
    }
    
    $command = "C:\Users\itdept\Desktop\Demo-Tools\ClamAV\clamscan.exe";

    & "$command" @("-d", "C:\Users\itdept\Desktop\Demo-Tools\ClamAv\yara", "-r", "$User_input");
}

interface;
