# Get "Today's Date - 30 days" as CompareDay
$CompareDay = (Get-Date).AddDays(-30)
echo $CompareDay

# Select all files that "CreateTime" before CompareDay in CurrentDirectory
$strInclude = "*.log"
echo $strInclude

$currentDirectory = (Get-Location)
echo $currentDirectory

$selectedFiles = Get-ChildItem -Path ${env:$currentDirectory} -Recurse -Include $strInclude | Where-Object -FilterScript {($_.CreationTime -lt $CompareDay)}
echo $selectedFiles
		
# Move all selected files in the directories - "OldLogs"
$targetDirectory = "OldLog"
echo $targetDirectory

$targetDirectoryPath = $currentDirectory.ToString()+"\"+$targetDirectory+"\"
echo $targetDirectoryPath

foreach ($item in $selectedFiles) { Move-Item $item $targetDirectoryPath}