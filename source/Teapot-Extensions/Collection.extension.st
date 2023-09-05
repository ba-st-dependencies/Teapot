Extension { #name : #Collection }

{ #category : #'*Teapot-Extensions' }
Collection >> asTeaUrlPattern [
	^ TeaUrlPatternSet fromCollection: self
]
