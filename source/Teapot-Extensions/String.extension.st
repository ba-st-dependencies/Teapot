Extension { #name : #String }

{ #category : #'*Teapot-Extensions' }
String >> asTeaUrlPattern [
	^ TeaGlobUrlPattern parseString: self
]
