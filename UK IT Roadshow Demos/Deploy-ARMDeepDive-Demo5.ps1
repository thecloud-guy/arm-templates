﻿$ResourceGroup = Get-AzureRmResourceGroup -ResourceGroupName "TheCloudGuy"
New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup.ResourceGroupName -TemplateFile "https://tcgdemofiles.blob.core.windows.net/arm/ARMDeepDive-Demo5.json"