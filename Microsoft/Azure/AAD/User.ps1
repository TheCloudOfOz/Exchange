$Common = @{
    City          = "Sydney"
    Country       = "Australia"
    State         = "NSW"
    PostalCode    = "2000"
    StreetAddress = "George St"
    Office        = ""
    Fax           = ""
    UsageLocation = "AU"
    License       = "ZZZ:ENTERPRISEPREMIUM"
}
$User = @{
    FirstName           = "Simon"
    LastName            = "Oz"
    DisplayName         = "Simon Oz"
    UserPrincipalName   = "simon@ZZZ.OnMicrosoft.com"
    Password            = "Password1234"
    ForceChangePassword = $true
    Department          = ""
    MobilePhone         = ""
    PhoneNumber         = ""
    Title               = ""
}
New-MsolUser @Common @User
Set-MsolUserLicense -UserPrincipalName simon@ZZZ.OnMicrosoft.com -AddLicenses "ZZZ:ENTERPRISEPREMIUM"
