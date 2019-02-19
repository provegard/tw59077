
function Exec(
    [scriptblock]$cmd
) {
    $global:lastexitcode = 0
    & $cmd
    if ($global:lastexitcode -ne 0) {
        throw "it failed!"
    }
}

Exec { dist\StdErrWriter.exe }
write-host "it worked!"
