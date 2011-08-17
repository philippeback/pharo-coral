running
run
	"Run the command, for real (actual stdin/out/err, exit does exit).
	For testing inside an image, you want a CLIAdhocEnvironment instead"
	^ self
		runOn: CommandLine uniqueInstance unregisteredParameters
		in: CLIEnvironment new