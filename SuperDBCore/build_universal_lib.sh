#!/bin/sh

rm -rf ./build
xcodebuild clean
xcodebuild -configuration Release -sdk iphoneos6.1
xcodebuild -configuration Release -sdk iphonesimulator6.1
lipo -create build/Release-iphoneos/libSuperDBCore.a build/Release-iphonesimulator/libSuperDBCore.a -output libSuperDBCore.a