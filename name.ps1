
$computername = "SurfaceBook2"
if ($env:computername -ne $computername) {
	Rename-Computer -NewName $computername
}