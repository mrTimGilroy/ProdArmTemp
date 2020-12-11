param (
  [ValidateNotNullOrEmpty()]
  [string] $vaultname,

 # [ValidateNotNullOrEmpty()]
 # [int] $chars,

  [ValidateNotNullOrEmpty()]
  [int] $specialChars,

  $Passwords = @(
  "SQLAdminPwd",
  "DiskEncryptPwd",
  "LinuxAdminPwd",
  "WindowsAdminPwd"
  )
);

Add-Type -AssemblyName System.Web
$vault = Get-AzKeyVault -ResourceGroupName KeyVault -VaultName $vaultname
if ($vault) {

ForEach ($passwd in $Passwords){
   
   $GenPass = [System.Web.Security.Membership]::GeneratePassword(14, $specialChars)
   Set-AzKeyVaultSecret -Name $passwd -SecretValue ($GenPass | ConvertTo-SecureString -AsPlainText -Force) -VaultName $vault.VaultName | Out-Null

  }
}
