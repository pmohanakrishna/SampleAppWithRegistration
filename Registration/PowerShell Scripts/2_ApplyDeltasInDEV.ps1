﻿# Import settings
. (Join-Path $PSScriptRoot '_Settings.ps1')$DeltaPath = join-path $PSScriptRoot '..\AppFiles\*.DELTA' #Import DeltasApply-NAVDelta -DeltaPath $DeltaPath `    -TargetServerInstance $ModifiedServerInstance  `    -Workingfolder $NavAppWorkingFolder `    -OpenWorkingfolder `    -SynchronizeSchemaChanges Force `    -DeltaType Add `    -VersionList $AppName `    -ErrorAction StopStart-NAVIdeClient -Database $ModifiedServerInstance