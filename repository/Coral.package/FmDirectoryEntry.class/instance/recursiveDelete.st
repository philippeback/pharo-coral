actions-directory
recursiveDelete
	self exists ifTrue: [self asFileDirectory recursiveDelete]