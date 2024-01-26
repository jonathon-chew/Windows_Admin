function lastlogedon() {
    Search-ADAccount -UsersOnly -SearchBase "" -AccountDisabled:$false | Get-ADUser -Properties Name, SamAccountName, LastLogon | Select Name, SamAccountName, @{N='LastLogon'; E={
        [DateTime]::FromFileTime($_.LastLogon)
        }
    }
}
