#!/bin/sh

# To run on all devices use ./runtests PATH_TO_APK

#variables
APK_PATH=$1

echo "Lauching the tests on all available devices..\n"

DEVICES=`adb devices`
for DEVICE in ${DEVICES}
do
  # DEVICE serials are 16 chars, rest all is junk..
  if [ "${#DEVICE}" -eq "16" ]
  then
    echo "Launching tests on DEVICE: $DEVICE"
    OUTPUT_PATH="testoutput/$DEVICE"
    mkdir -p $OUTPUT_PATH
    RESET_BETWEEN_SCENARIOS=1 SCREENSHOT_PATH="$OUTPUT_PATH/" ADB_DEVICE_ARG=$DEVICE calabash-android run $APK_PATH --format json --out "$OUTPUT_PATH/output.json" &
  fi
done

echo "\nLaunched all tests, waiting for them to finish..."
wait
echo "All the tests have finished.."