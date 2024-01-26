function getUserGroupsForUser($user){
    (Get-ADUser $user -Properties MemberOf).memberof | Get-ADGroup | Select-Object name
}
