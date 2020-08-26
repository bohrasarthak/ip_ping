$names = Get-content "C:\ip_names.txt"
foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
   $Output = "$name is up"+"`n"
   Write-Host "$name is up" -ForegroundColor Green
  }
  else{
    $Output = "$name is down,"+"`n" 
    Write-Host "$name is down" -ForegroundColor Red
  }

$Output | Out-file "C:\$name.txt"

}

Start-Sleep -s 15