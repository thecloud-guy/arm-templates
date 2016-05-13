$ResourceGroup = Get-AzureRmResourceGroup -ResourceGroupName "TheCloudGuy"
Remove-AzureRmStorageAccount -ResourceGroupName $ResourceGroup.ResourceGroupName -Name "tvpb3chicago2"