"
I extend the ZnRequest with addition methods for convenience.
"
Class {
	#name : #TeaRequest,
	#superclass : #Object,
	#instVars : [
		'znRequest',
		'pathParams'
	],
	#category : #'Teapot-Core'
}

{ #category : #'instance creation' }
TeaRequest class >> fromZnRequest: aZnRequest [
	^ self fromZnRequest: aZnRequest pathParams: Dictionary new
]

{ #category : #'instance creation' }
TeaRequest class >> fromZnRequest: aZnRequest pathParams: aDictionary [
	^ self new setZnRequest: aZnRequest pathParams: aDictionary
]

{ #category : #aborting }
TeaRequest >> abort: response [
	(TeaAbort response: response) signal
]

{ #category : #private }
TeaRequest >> asKey: nameOrIndex [
	"When using regular expressions subexpression filter the keys in the dictionar will be numbers"

	^ nameOrIndex isNumber
		  ifTrue: [ nameOrIndex ]
		  ifFalse: [ nameOrIndex asString ]
]

{ #category : #'acccessing - params' }
TeaRequest >> at: nameOrIndex [

	^ self at: nameOrIndex ifAbsent: [ TeaNoSuchParam signalWithParam: nameOrIndex ]
]

{ #category : #'acccessing - params' }
TeaRequest >> at: nameOrIndex ifAbsent: aBlock [
	"Gets the value of a path parameter, query parameter for form parameter.
		E.g. /foo/<path-param>/bar
		E.g. /foo?queryParam=value"

	^ pathParams
		  at: ( self asKey: nameOrIndex )
		  ifAbsent: [ self queryOrFormParam: nameOrIndex ifAbsent: aBlock ]
]

{ #category : #'reflective operations' }
TeaRequest >> doesNotUnderstand: aMessage [
	^ aMessage sendTo: znRequest
]

{ #category : #private }
TeaRequest >> formParam: name ifAbsent: aBlock [
	^ (znRequest entity isKindOf: ZnApplicationFormUrlEncodedEntity) "XXX do something better" 
		ifTrue: [ znRequest entity at: name asString ifAbsent: aBlock ]
		ifFalse: aBlock
]

{ #category : #private }
TeaRequest >> queryOrFormParam: name ifAbsent: aBlock [
	^ znRequest uri 
		queryAt: name 
		ifAbsent: [ self formParam: name ifAbsent: aBlock ]
]

{ #category : #initialization }
TeaRequest >> setZnRequest: aZnRequest pathParams: aDictionary [
	znRequest := aZnRequest.
	pathParams := aDictionary.
	^ self
]
