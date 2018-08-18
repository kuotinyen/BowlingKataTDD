#!/bin/sh
xcrun xcodebuild -project BowlingKataTDD.xcodeproj -scheme BowlingKataTDD \
  -archivePath BowlingKataTDD.xcarchive archive

# xcrun xcodebuild -exportArchive -archivePath BowlingKataTDD.xcarchive \
#   -exportPath ./build -exportOptionsPlist ExportOptions.plist

