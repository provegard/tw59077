& .\dist\StdErrWriter.exe
if ($global:lastexitcode -ne 0) {
    throw "it failed!"
}
write-host "it worked!"
