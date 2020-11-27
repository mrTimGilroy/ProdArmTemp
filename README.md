# ProdArmTemp
Templates created that have been tested and proven suitable for the function they were created for.  An assumption was made for these files that existing infrastructure is in place. For example VM deply templates expect VNET, KeyVault and StorageAccount to have been provisioned.


Files.
DepWinVMToVNET.json is a fairly full feature build of a Windows 2012R2 Server to an existing VNET in the same resource group.  

Dependency: VNET and Subnets & KeyVault along with a storage account for diagnostics, log files and Performance monitoring.
  
  Option on 2 Sizes:
    Small 'Standard_B2ms'
    Medium 'Standard_D2s_v3'
  
  Optional Data Disk:
    Fixed size of 500GB
    Lun 0 
    
  Malware Extension:
    RealTime Enabled,
    Exclusion on C:\Users, C:\Source
 
 Boot Diagnostics enabled
 Diagnostic Settings:Performance Counters, Event Log Warning and Error
 
 IIS Installation:
  Web-Server
  Web-ASP-Net45
  Management Tools
 
  

Usual Disclaimers apply.
