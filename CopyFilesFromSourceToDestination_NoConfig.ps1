Param(
  [string]$srcfilePath,
  [string]$destlocation
)

Write-Host $srcfilePath to $destlocation
ForEach ($file in Get-ChildItem $srcfilePath -rec)
{
	if(!$file.PSIsContainer) { # not a folder
		if (!$file.FullName.EndsWith(".config")) { # not a config file
			Write-Host $file.FullName to $file.FullName.Replace($srcfilePath,$destlocation)
	New-Item -ItemType File -Path $file.FullName.Replace($srcfilePath,$destlocation) -Force
	Copy-Item $file.FullName -destination $file.FullName.Replace($srcfilePath,$destlocation) -Force
		}
	}
}