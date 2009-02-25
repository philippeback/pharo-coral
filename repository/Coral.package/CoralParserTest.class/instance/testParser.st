testing
testParser

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '[| a |]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]')] raise: Error.

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]
	[2 + 9]')] raise: Error.

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '[| a |
	a := 12.]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]')] raise: Error.

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '[| a |]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]')] raise: Error.

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '[| a |]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]
	[7 + 9.]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]')] raise: Error.

	self shouldnt: [self parserForTests parseScript: (ReadStream on: '[| a |]
	Point >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]
	[7 + 9.]
	Point class >> color: aColor with: aSize
    	[
		self color: aColor.
		self size: aSize
    	]')] raise: Error