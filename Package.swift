import PackageDescription

let package = Package(
	name:"FriedenskircheBielefeld",
	targets:[
		.target(
			name:"FriedenskircheBielefeld",
			dependencies: [
				"SwiftyFTP"
			]
		),
		.testTarget(
		name:"FriedenskircheBielefeldTests",
		dependencies: ["FriedenskircheBielefeld"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/alexsteinerde/SwiftyFTP.git", from: "1.0.0")
	]
	
	
)

