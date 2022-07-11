Set-Service -StartupType disabled wsearch
Stop-Service wsearch
Remove-Item "$env:ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb"
Set-Service -StartupType Automatic wsearch
Start-Service wsearch  2> $null
