Extension { #name : #CharacterCollection }

{ #category : #'*Teapot-GS64-Base-Extensions' }
CharacterCollection >> asTeaUrlPattern [

	^ TeaGlobUrlPattern parseString: self
]
