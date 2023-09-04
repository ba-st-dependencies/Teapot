Extension { #name : #Teapot }

{ #category : #'*Teapot-Pharo-Extensions' }
Teapot >> serveStatic: urlPrefixString from: pathString [	
	staticRouter urlPrefix: urlPrefixString path: pathString
]
