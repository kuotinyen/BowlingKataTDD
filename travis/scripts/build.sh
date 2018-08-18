#!/bin/sh
# xcrun xcodebuild -project BowlingKataTDD.xcodeproj -scheme BowlingKataTDD \
  # -archivePath BowlingKataTDD.xcarchive archive



xcodebuild -project BowlingKataTDD.xcodeproj -scheme BowlingKataTDD -sdk iphonesimulator


# xcrun xcodebuild -exportArchive -archivePath BowlingKataTDD.xcarchive \
#   -exportPath ./build -exportOptionsPlist ExportOptions.plist

