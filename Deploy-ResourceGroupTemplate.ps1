# Login to Azure
Login-AzureRmAccount

# Get the resource group
$ResourceGroup = Get-AzureRmResourceGroup -ResourceGroupName "TheCloudGuy"

# Deploy the template to the resource group
New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup -TemplateFile "<Path To Template>.json"