// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

// The 'let package' declaration defines the package and its properties.
let package = Package(
    // The name of your Swift package.
    name: "UnityFrameworkPackage",
    
    // The platforms your binary framework supports.
    // Adjust the version number to the minimum iOS version you support.
    platforms: [
        .iOS(.v13)
    ],
    
    // Products define the executables and libraries a package makes available to other packages.
    products: [
        .library(
            // The name of the library that clients will import.
            // For example, in Xcode, you would write `import UnityFramework`.
            name: "UnityFramework",
            // The library product exposes the 'UnityFramework' binary target defined below.
            targets: ["UnityFramework"])
    ],
    
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    targets: [
        // This defines a pre-compiled binary artifact that is fetched from a URL.
        .binaryTarget(
            // The name of the target. This MUST match the name in the product's `targets` array.
            name: "UnityFramework",
            
            // --- IMPORTANT ---
            // The URL and checksum below are placeholders.
            // Your GitHub Actions workflow will automatically replace these values
            // every time you create a new release.
            url: "https://github.com/flags-gardens/metropolis-builds/releases/download/v0.0.9/UnityFramework.xcframework.zip",
            checksum: "79d1ee7849c4bb85c70b0bc79faf9f96eb91b2dea8cfabb48824ae76702eac4a"
        )
    ]
)
