initialize-release
evaluateStream: stream
	[ PPCoralParser parse: stream contents ]
		on: InMidstOfFileinNotification
		do: [ :ex | ex resume: false ]