// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "KmpLib",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "KmpLib", targets: ["KmpLib"]),
      .library(name: "Greeting", targets: ["Greeting"])
   ],
   targets: [
      .binaryTarget(
         name: "KmpLib",
         url: "https://github.com/jchiarad/swift-kmp-lib/releases/download/v0.0.1/KmpLib.xcframework.zip",
         checksum:"0be62ee9449336363c5511e2b7f710417cfa5834cb9b347bce02c3b3a0de6949"
      ),
      .target(
         name: "Greeting",
         dependencies: ["KmpLib"]
      )
   ]
)