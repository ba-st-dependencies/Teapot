Extension { #name : #RxMatcher }

{ #category : #'*Teapot-Pharo-Extensions' }
RxMatcher >> asTeaUrlPattern [
	^ TeaRxUrlPattern fromRxMatcher: self
]
