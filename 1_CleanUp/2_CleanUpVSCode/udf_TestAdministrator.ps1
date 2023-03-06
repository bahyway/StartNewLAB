Function udf_TestAdministrator {
    $currentUser = New-Object System.Security.Principal.WindowsPrincipal (
        [System.Security.Principal.WindowsIdentity]::GetCurrent()
    )
    $currentUser.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
    Return $currentUser
}
udf_TestAdministrator
