#!/bin/bash

# To run on all devices use ./runtests PATH_TO_APK

#variables
APK_PATH=$1

echo "Lauching the tests on all available devices..\n"

for DEVICE in `adb devices | grep -v "List" | awk '{print $1}'`
do
  echo "Launching tests on DEVICE: $DEVICE"
  OUTPUT_PATH="testoutput/$DEVICE"
  mkdir -p $OUTPUT_PATH
  RESET_BETWEEN_SCENARIOS=1 SCREENSHOT_PATH="$OUTPUT_PATH/" ADB_DEVICE_ARG=$DEVICE calabash-android run $APK_PATH --format html --out "$DEVICE.html" &
done

echo "\nLaunched all tests, waiting for them to finish..."
wait
echo "All the tests have finished.."