###################################
#Monogame VS2022 Project Generator#
########Script by Miker525#########
####https://github.com/miker525####
###################################


### SET UP PARAMETERS FOR SCRIPT
Param(
[Parameter(Mandatory=$true)]
[string]$name,
[string]$template="gl",
[string]$path
)

dotnet new -i "MonoGame.Templates.CSharp"

### SET DEFAULT TO OPENGL
$ptemp = "mgdesktopgl"

### IF TEMPLATE DEFINED IN PARAMS ENSURE CORRECT TEMPLATE IS SELECTED
if ($template.ToLower() -eq "gl")
{ $ptemp = "mgdesktopgl" }
elseif ($template.ToLower() -eq "dx")
{ $ptemp = "mgwindowsdx"}
elseif (($template.ToLower() -eq "cr") -or ($template.ToLower() -eq "core"))
{ $ptemp = "mguwpcore" }
elseif (($template.ToLower() -eq "xm") -or ($template.ToLower() -eq "xaml"))
{ $ptemp = "mguwpxaml" }
elseif ($template.ToLower() -eq "and")
{ $ptemp = "mgandroid"}
elseif ($template.ToLower() -eq "ios")
{ $ptemp = "mgios"}
elseif ($template.ToLower() -eq "net")
{ $ptemp = "mgnetstandard"}
elseif (($template.ToLower() -eq "pipe") -or ($template.ToLower() -eq "pl"))
{ $ptemp = "mgpipeline"}
elseif (($template.ToLower() -eq "lib") -or ($template.ToLower() -eq "shared"))
{ $ptemp = "mgshared"}

### CREATE DIRECTORIES NEEDED AND CD INTO IT
### IF AN ALTERNATE PATH IS PROVIDED CREATE SAID DIRECTORY
if ([string]::IsNullOrEmpty($path))
{
	mkdir $name
	cd $name
}
else
{
	mkdir "$path/$name"
	cd "$path/$name"
}

### CREATE SOLUTION/PROJECT FILES
dotnet new sln
dotnet new $ptemp -o $name
dotnet sln add $name
