# Crap
PowerShell implementation of  (https://github.com/mattparkes/PoShF@!$)
Basically I changed all the curse words to somthing not sdo bad.

When you type a command incorrectly, don't _say_ 'crap', _type_ it!

## Installation:

For Crap to run, your execution policy must be lowered. So run this in an admin elevated PowerShell to install:

	Set-ExecutionPolicy RemoteSigned
	iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-Crap.ps1'))
	or simple imoprt the module like in your powershell module with import-module pathtoCrap\crap.psm1

## Usage:

We've all done this before...

	PS C:\> peng 8.8.8.8 -a
	peng : The term 'peng' is not recognized as the name of a cmdlet, function, script file, or operable program.
	Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
	At line:1 char:1
	+ peng 8.8.8.8 -a
	+ ~~~~
		+ CategoryInfo          : ObjectNotFound: (peng:String) [], CommandNotFoundException
		+ FullyQualifiedErrorId : CommandNotFoundException

Crap can fix it.

	PS C:\> crap

	Did you mean?
	 PING -a 8.8.8.8
	[Y] Yes  [N] No  [?] Help (default is "Y"): y

	Pinging google-public-dns-a.google.com [8.8.8.8] with 32 bytes of data:
	Reply from 8.8.8.8: bytes=32 time=15ms TTL=56
	Reply from 8.8.8.8: bytes=32 time=14ms TTL=56
	Reply from 8.8.8.8: bytes=32 time=14ms TTL=56
	Reply from 8.8.8.8: bytes=32 time=14ms TTL=56

	Ping statistics for 8.8.8.8:
		Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
	Approximate round trip times in milli-seconds:
		Minimum = 14ms, Maximum = 15ms, Average = 14ms

## Commands:

- `crap` (alias to `Invoke-Crap`)  
This is the command which mungs your last command and presents you with options to fix it.

- `crap!` (alias to `Invoke-Crap -Force`)  
This command will execute the recommended option without prompting the user.

- `WTF` (alias to `Get-CrappyHelp`)  
Googles your last console error.

- `Get-Crap`  
Prints the list of commands which you have used crap to correct previously.
