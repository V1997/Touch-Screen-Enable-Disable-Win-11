# Requires admin privileges
$deviceName = "HID-compliant touch screen"

# Get device info
$device = Get-PnpDevice | Where-Object { $_.FriendlyName -eq $deviceName }

if ($device.Status -eq "OK") {
    Write-Host "Disabling touch screen..."
    Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
} elseif ($device.Status -eq "Error") {
    Write-Host "Enabling touch screen..."
    Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
} else {
    Write-Host "Touch screen device not found or unknown status."
}
