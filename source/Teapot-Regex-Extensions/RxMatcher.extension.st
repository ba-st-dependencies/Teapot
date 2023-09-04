Extension { #name : #RxMatcher }

{ #category : #'*Teapot-Regex-Extensions' }
RxMatcher >> asTeaUrlPattern [
	^ TeaRxUrlPattern fromRxMatcher: self
]
