$registryPath = "HKLM:\SOFTWARE\Policies\Google\Chrome"

IF(!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Confirm:$false -Force | Out-Null
}

New-ItemProperty -Name BrowserGuestModeEnabled -Path $registryPath -Confirm:$false -Force -Value 0 -PropertyType DWORD
