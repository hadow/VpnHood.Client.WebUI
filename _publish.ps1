$solutionDir = Join-Path -Path (Split-Path -parent $PSScriptRoot) -ChildPath "WFVPN";

. "$solutionDir\pub\Common.ps1";

$distDir= "$PSScriptRoot\dist";
$dest1= "$solutionDir\WFVPN.Client.Xamarin.Android\Assets\SPA.zip";
$dest2= "$solutionDir\WFVPN.Client.App.Win\Resources\SPA.zip";

# build output
# ./_publish.bat
try {
 Push-Location -Path $PSScriptRoot;
 npm run build;
}
finally {
    Pop-Location;
}

if ($LASTEXITCODE -gt 0) { Write-Host ("Error code: " + $lastexitcode) -ForegroundColor Red; pause;}

# zip
ZipFiles -Path $distDir -DestinationPath $dest1;
if ($LASTEXITCODE -gt 0) { Write-Host ("Error code: " + $lastexitcode) -ForegroundColor Red; pause;}

# Other projects
Copy-Item -path $dest1 -Destination $dest2 -Force