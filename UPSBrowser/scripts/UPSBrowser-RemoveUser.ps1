[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true,Position=1)]
  [string] $WebApplicationURL,
  [Parameter(Mandatory=$true,Position=2)]
  [string] $UserEmail,
  [Parameter(Mandatory=$false,Position=3)]
  [string] $PropertyName = "upsbrowserusers"
)

$ErrorActionPreference = "Stop";
Add-PSSnapin "Microsoft.SharePoint.PowerShell";
$webApp = Get-SPWebApplication -id $WebApplicationURL;

$upsBrowserUsersString = $webApp.Properties[$PropertyName];
Write-Debug "upsBrowserUsersString: $upsBrowserUsersString";

$matchCount = 0;
if ($upsBrowserUsersString.Length -gt 0) 
{
    $emails = $upsBrowserUsersString.Split(",");
    $newEmails = @();
    
    foreach ($email in $emails) {
        if ($email -ieq $UserEmail) {
            $matchCount += 1;
        } else {
            $newEmails += $email;
        };
    };
};

if ($matchCount -gt 0) {
    $upsBrowserUsersString = $NewEmails -join ",";
    Write-Debug "upsBrowserUsersString: {$upsBrowserUsersString}";
    Write-Debug "matchCount: {$matchCount}";
    $webApp.Properties[$PropertyName] = $upsBrowserUsersString;
    $webApp.Update();
    Write-Host "User with email $UserEmail has been removed from UPSBrowser application access list";
} else {
    Write-Warning "User with email $UserEmail not found in UPSBrowser application access list, no action performed";
    $upsBrowserUsersString = $webApp.Properties[$PropertyName];
};


Write-Host "UPSBrowser users: $upsBrowserUsersString";