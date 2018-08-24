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


if ($upsBrowserUsersString.Length -eq 0) 
{
    $upsBrowserUsersString = $UserEmail;
}
else
{
    $emails = $upsBrowserUsersString.Split(",");
    
    if ($emails -icontains $UserEmail) {
        Write-Warning "User with email $UserEmail has already been granted access to UPSBrowser application, no action performed";
        Write-Host "UPSBrowser users: $upsBrowserUsersString";
        exit 0;
    } else
    {
        $emails += $UserEmail;
    }
    
    $upsBrowserUsersString = $emails -join ",";
};

$webApp.Properties[$PropertyName] = $upsBrowserUsersString;
$webApp.Update();
Write-Host "User with email $UserEmail has been granted access to UPSBrowser application";
Write-Host "UPSBrowser users: $upsBrowserUsersString";
