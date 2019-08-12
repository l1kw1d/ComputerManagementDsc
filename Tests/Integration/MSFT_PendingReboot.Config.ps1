# Integration Test Config Template Version: 1.0.0
configuration MSFT_PendingReboot_config
{
    Import-DscResource -ModuleName ComputerManagementDsc

    node $AllNodes.NodeName {
        PendingReboot TestReboot
        {
            Name = $Node.RebootName
        }
    }
}
