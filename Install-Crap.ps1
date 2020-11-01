try {
	Test-Path $env:PSModulePath.Split(';')[0] | Out-Null
	$dst = (Join-Path $env:PSModulePath.Split(';')[0] Crap)
} catch {
	$dst = "$env:ProgramFiles\WindowsPowerShell\Modules\Crap"
}
$pfk = (Join-Path $env:temp "poshfuck.zip")

md $dst -ea silentlycontinue

[Net.ServicePointManager]::SecurityProtocol = "tls12"
Invoke-WebRequest 'https://github.com/kforshey/Crap/crap.zip' -OutFile $crp

$shell = New-Object -ComObject Shell.Application; $shell.Namespace($dst).copyhere(($shell.NameSpace($crp)).items(),20)

Move-Item "$dst\Crap-master\*" "$dst" -Force
Remove-Item "$dst\Crap-master" -Recurse -Force
Remove-Item $pfk -Force

if ($null -eq $profile -or (-not(Test-Path $profile))) {
	Write-Output "Import-Module Crap" | Out-File $profile -Force -encoding utf8
	Write-Output "Created $profile"
} elseif ( -not(Select-String -Path $profile -Pattern "Import-Module Crap")) {
	Write-Output "`nImport-Module Crap" | Out-File $profile -Append -encoding utf8
	Write-Output "Added Crap to profile"
}

Import-Module Crap

Write-Output "Installation complete."
