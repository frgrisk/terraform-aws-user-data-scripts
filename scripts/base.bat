<powershell>
$instanceId = (invoke-webrequest http://169.254.169.254/latest/meta-data/instance-id -UseBasicParsing).content
$nameValue = (get-ec2tag -filter @{Name="resource-id";Value=$instanceid},@{Name="key";Value="Hostname"}).Value
$pattern = "^(?![0-9]{1,15}$)[a-zA-Z0-9-]{1,15}$"
#Verify Name Value satisfies best practices for Windows hostnames
If ($nameValue -match $pattern)
    {Try
        {Rename-Computer -NewName $nameValue -Restart -ErrorAction Stop}
    Catch
        {$ErrorMessage = $_.Exception.Message
        Write-Output "Rename failed: $ErrorMessage"}}
Else
    {Throw "Provided name not a valid hostname. Please ensure Name value is between 1 and 15 characters in length and contains only alphanumeric or hyphen characters"}
</powershell>
