$ResourceGroup = Get-AzureRmResourceGroup -ResourceGroupName "TheCloudGuy"

# Define new policy
$Policy = New-AzureRmPolicyDefinition -Name RegionPolicy -Description "Policy to allow resource creation only in certain regions" -Policy '{  
  "if" : {
    "not" : {
      "field" : "location",
      "in" : ["northeurope"]
    }
  },
  "then" : {
    "effect" : "deny"
  }
}'  

# Apply policy
New-AzureRmPolicyAssignment -Name RegionPolicy -PolicyDefinition $Policy -Scope /subscriptions/56011a11-fa15-4218-8b23-57ee0f1f3f07/resourceGroups/TheCloudGuy

# Attempt new deployment
New-AzureRmStorageAccount -Name "tvpb3chicago2" -ResourceGroupName $ResourceGroup.ResourceGroupName -Type Standard_LRS -Location westeurope

# Remove policy assignment
Remove-AzureRmPolicyAssignment -Name RegionPolicy -Scope /subscriptions/56011a11-fa15-4218-8b23-57ee0f1f3f07/resourceGroups/TheCloudGuy