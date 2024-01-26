function getAllUsersInAGroup($group){
    Get-ADGroup $group -Properties Member | Select-Object -Expand Member | Get-ADUser -Property Name, DisplayName | Select-Object Name, SamAccountName
}
