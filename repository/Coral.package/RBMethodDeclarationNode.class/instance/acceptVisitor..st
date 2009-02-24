visitor
acceptVisitor: aProgramNodeVisitor
 	
	"self classVar binding ifNil:[
		aProgramNodeVisitor visitNode: self classVar.
		(self classVar binding value isKindOf: Behavior)
			 ifFalse: [self error: self classVar name, ' is unknown']]."
	super acceptVisitor: aProgramNodeVisitor