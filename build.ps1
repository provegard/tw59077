
$PSVersionTable | Out-String

Import-Module VSSetup -ea stop

import-module .\psake.4.7.4\tools\psake\psake.psm1

$psake.config_default.verboseError = $true

invoke-psake build-file.ps1 -framework '4.7.2x86' -t TestIt

if ($psake.build_success -eq $FALSE) {
    $psakeError = $psake.error_message
    $psakeError = if ($psakeError) { $psakeError } else { "Unknown error" }
    throw $psakeError
}

write-host "It worked!"
