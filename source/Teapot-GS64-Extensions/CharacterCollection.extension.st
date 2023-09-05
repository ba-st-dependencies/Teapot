Extension { #name : #CharacterCollection }

{ #category : #'*Teapot-GS64-Extensions' }
CharacterCollection >> asTeaUrlPattern [

	^ TeaGlobUrlPattern parseString: self
]
