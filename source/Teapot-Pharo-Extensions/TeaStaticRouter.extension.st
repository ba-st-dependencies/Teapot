Extension { #name : #TeaStaticRouter }

{ #category : #'*Teapot-Pharo-Extensions' }
TeaStaticRouter >> urlPrefix: urlPrefixString path: pathString [
	delegate ifNil: [ delegate := ZnStaticFileServerDelegate new ].
	delegate
		prefixFromString: urlPrefixString;
		directory: pathString asFileReference.
]
