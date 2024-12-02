$users = Import-Csv "C:\Users\Anna\kasutajate_haldus\kasutajad.csv" -Encoding Default -Delimiter ";"
foreach ($user in $users) {
    $username = $user.Username
    $fullname = $user.Fullname
    $description = $user.Description
    $password = $user.Password | ConvertTo-SecureString -AsPlainText -Force
    New-LocalUser $username -Password $userPassword -FullName $fullname -Description $description
}