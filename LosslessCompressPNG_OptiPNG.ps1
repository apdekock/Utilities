Set-ExecutionPolicy RemoteSigned
gci -Path "C:\git\apdekock.github.io\assets" -Filter "*.png" -Recurse | %{

    Start-Process -FilePath "C:\optipng-0.7.5-win32\optipng.exe" -ArgumentList $_.FullName
}
Set-ExecutionPolicy Restricted