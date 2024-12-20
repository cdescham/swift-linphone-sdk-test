// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "linphonesw",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "linphonesw",
            targets: ["linphonesw"]
        )
    ],
    targets: [
        
		.binaryTarget(
			name: "ZXing",
			path: "XCFrameworks/ZXing.xcframework.zip"
		),
		
		.binaryTarget(
			name: "bctoolbox-ios",
			path: "XCFrameworks/bctoolbox-ios.xcframework.zip"
		),
		
		.binaryTarget(
			name: "bctoolbox-tester",
			path: "XCFrameworks/bctoolbox-tester.xcframework.zip"
		),
		
		.binaryTarget(
			name: "bctoolbox",
			path: "XCFrameworks/bctoolbox.xcframework.zip"
		),
		
		.binaryTarget(
			name: "belcard",
			path: "XCFrameworks/belcard.xcframework.zip"
		),
		
		.binaryTarget(
			name: "belle-sip",
			path: "XCFrameworks/belle-sip.xcframework.zip"
		),
		
		.binaryTarget(
			name: "belr",
			path: "XCFrameworks/belr.xcframework.zip"
		),
		
		.binaryTarget(
			name: "lime",
			path: "XCFrameworks/lime.xcframework.zip"
		),
		
		.binaryTarget(
			name: "linphone",
			path: "XCFrameworks/linphone.xcframework.zip"
		),
		
		.binaryTarget(
			name: "linphonetester",
			path: "XCFrameworks/linphonetester.xcframework.zip"
		),
		
		.binaryTarget(
			name: "mediastreamer2",
			path: "XCFrameworks/mediastreamer2.xcframework.zip"
		),
		
		.binaryTarget(
			name: "msamr",
			path: "XCFrameworks/msamr.xcframework.zip"
		),
		
		.binaryTarget(
			name: "mscodec2",
			path: "XCFrameworks/mscodec2.xcframework.zip"
		),
		
		.binaryTarget(
			name: "msopenh264",
			path: "XCFrameworks/msopenh264.xcframework.zip"
		),
		
		.binaryTarget(
			name: "mssilk",
			path: "XCFrameworks/mssilk.xcframework.zip"
		),
		
		.binaryTarget(
			name: "mswebrtc",
			path: "XCFrameworks/mswebrtc.xcframework.zip"
		),
		
		.binaryTarget(
			name: "ortp",
			path: "XCFrameworks/ortp.xcframework.zip"
		),
		
		.target(
			name: "linphonexcframeworks",
			dependencies: ["ZXing", "bctoolbox-ios", "bctoolbox-tester", "bctoolbox", "belcard", "belle-sip", "belr", "lime", "linphone", "linphonetester", "mediastreamer2", "msamr", "mscodec2", "msopenh264", "mssilk", "mswebrtc", "ortp"]
		),

		.target(
			name: "linphonesw",
			dependencies: ["linphonexcframeworks"]
		)
    ]
)

