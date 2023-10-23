New-MsolGroup -DisplayName "Microsoft 365 Group Creators" -Description "Members of this group allow to Create Microsoft 365 Group"
$Template = Get-AzureADDirectorySettingTemplate | Where-Object { $_.DisplayName -eq "Group.Unified" }
if (!($Setting = Get-AzureADDirectorySetting | Where-Object { $_.TemplateId -eq $Template.Id })) {
    $Setting = $Template.CreateDirectorySetting()
}
$Setting["EnableGroupCreation"] = "False"
$Setting["GroupCreationAllowedGroupId"] = (Get-AzureADGroup -SearchString "Microsoft 365 Group Creators").objectid
# Display Values
$Setting.Values

# First Time Applying Settings
New-AzureADDirectorySetting -DirectorySetting $Setting

# Update Settings
#Set-AzureADDirectorySetting -DirectorySetting $Setting
