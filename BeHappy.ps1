$suffixs = "*.zip","*.rar","*.7z"
foreach ($suffix in $suffixs) {
  Get-ChildItem ./ $suffix | ForEach-Object -Process {
    $suffix_without_star = $suffix.Replace("*","")
    $dir_name = ($_.name).Replace($suffix_without_star,"")
    & '7z.exe' x $_.name -o"$dir_name"
	if (Test-Path $dir_name/$dir_name) {
	  Set-Location $dir_name
	  Move-Item $dir_name/* ./
	  Remove-Item $dir_name
	  Set-Location ..
	}
  }
}