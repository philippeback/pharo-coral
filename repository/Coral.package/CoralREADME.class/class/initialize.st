initialization
initialize
	super initialize.
	
	self openWorkspaceLabeled: 'READ ME' withContents: self readMe.
	self openWorkspaceLabeled: 'TO DO' withContents: self todo.
	self openWorkspaceLabeled: 'TO DO' withContents: self faq.