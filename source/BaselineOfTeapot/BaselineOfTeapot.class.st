Class {
	#name : #BaselineOfTeapot,
	#superclass : #BaselineOf,
	#category : #BaselineOfTeapot
}

{ #category : #baselines }
BaselineOfTeapot >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self setUpDependencies: spec.

		spec
			package: 'Teapot-Core' with: [ spec requires: #( 'NeoJSON' 'Buoy-Deployment' ) ];
			package: 'Teapot-Extensions'
			with: [ spec requires: 'Teapot-Core' ];
			package: 'Teapot-Zinc-Extensions'
			with: [ spec requires: 'Teapot-Core' ];
			package: 'Teapot-Pharo-Extensions'
			with: [ spec requires: 'Teapot-Core' ];
			package: 'Teapot-Tools' with: [ spec requires: 'Teapot-Core' ].

		spec
			for: #( #'pharo7.x' #'pharo8.x' #'pharo9.x' )
			do: [
			spec package: 'Teapot-Tests' with: [ spec requires: 'Teapot-Core' ] ].
		spec for: #( #'pharo10.x' #'pharo11.x' #'pharo12.x' ) do: [
			spec
				package: 'Teapot-Tests'
				with: [ spec requires: #( 'Teapot-Core' 'Zinc-Zodiac' ) ] ].

		spec package: 'Teapot-Pharo-Tests' with: [
			spec requires:
				#( 'Teapot-Tests' 'Teapot-Pharo-Extensions'
				   'Teapot-Extensions' 'Teapot-Zinc-Extensions' ) ].

		spec
			group: 'Tests' with: #( 'Teapot-Tests' 'Teapot-Pharo-Tests' );
			group: 'Tools' with: #( 'Teapot-Tools' );
			group: 'Deployment'
			with:
				#( 'Teapot-Core' 'Teapot-Pharo-Extensions'
				   'Teapot-Extensions' 'Teapot-Zinc-Extensions' );
			group: 'Development' with: #( 'Tests' 'Tools' );
			group: 'default' with: 'Development' ]
]

{ #category : #accessing }
BaselineOfTeapot >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfTeapot >> setUpDependencies: spec [

	spec
		baseline: 'NeoJSON' with: [
			spec
				repository: 'github://svenvc/NeoJSON';
				loads: #( 'core' )
			];
		baseline: 'ZincHTTPComponents' with: [ spec repository: 'github://svenvc/zinc' ];
		project: 'Zinc-Zodiac' copyFrom: 'ZincHTTPComponents' with: [ spec loads: 'Zinc-Zodiac-Core' ].
	spec
		baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:v7' ];
		project: 'Buoy-Deployment' copyFrom: 'Buoy' with: [ spec loads: 'Deployment' ]
]
