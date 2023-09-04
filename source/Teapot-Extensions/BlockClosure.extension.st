Extension { #name : #BlockClosure }

{ #category : #'*Teapot-Extensions' }
BlockClosure >> teaEvalActionOnException: anException request: aTeaRequest [
	^ self cull: anException cull: aTeaRequest
]

{ #category : #'*Teapot-Extensions' }
BlockClosure >> teaEvalActionOnRequest: aTeaRequest [
	^ self cull: aTeaRequest
]

{ #category : #'*Teapot-Extensions' }
BlockClosure >> teaEvalActionOnRequest: aTeaRequest response: aZnResponse [
	^ self cull: aTeaRequest cull: aZnResponse
]
