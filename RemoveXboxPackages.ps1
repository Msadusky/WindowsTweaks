$pkges = Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match "xbox"}
if ($pkges) {
  Write-Host $pkges
  Get-ProvisionedAppxPackage -Online | Where-Object { $_.PackageName -match "xbox"} | ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $_.PackageName }
  Write-Host "Xbox Packages Removed"
} else {
  Write-Host "No Xbox Packages Installed"
}
