Extension { #name : #Object }

{ #category : #'*Teapot-Extensions' }
Object >> teaEvalActionOnException: anException request: aTeaRequest [
	^ self
]

{ #category : #'*Teapot-Extensions' }
Object >> teaEvalActionOnRequest: aTeaRequest [
	^ self
]

{ #category : #'*Teapot-Extensions' }
Object >> teaTransform: aResponseTransformer request: aTeaRequest [
	^ aResponseTransformer cull: (TeaResponse ok body: self) cull: aTeaRequest
]
