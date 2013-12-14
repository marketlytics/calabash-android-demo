calabash-android-demo
=====================

I recently started learning to program in Android and was testing it with [Calabash Android](https://github.com/calabash/calabash-android) as well.

This is a demo project which has a simple Android project and some sample testcases.

## Setup

You will need to first install calabash-android. For Mac users, its as simple as opening the terminal and
running `gem install calabash-android` or `sudo gem install calabash-android`. You will also need the
Android SDK deployed and configured on your computer, as well as the ANDROID_HOME variable configured to
the SDK directory. You can download the SDK from [here](https://developer.android.com/sdk/index.html).

The project above is configured from API 8 to API 18, so the default downloaded SDK should work.

## Running

To run the calabash-android steps, start an emulator (using the Android Virtual Device Manager icon in)
the top toolbar of the Eclipse ADT. Build and run the app so that the bin directory is created and populated
with the APK file.

Start the terminal and tranverse to the project directory. Use `calabash-android run ./bin/CalabashTest.apk`
to start the tests. **Make sure the emulator is already running** with or without the app. The report shall
output inside the terminal window.

## Editing

To edit the testcases open the file features/my_first.feature. This contains the testcases. If you are editing in
Eclipse, you can download the [Eclipse-Cucumber plugin](https://github.com/cucumber/cucumber-eclipse) for additional syntax support.

You can find some predefined steps [here](https://github.com/calabash/calabash-android/blob/master/ruby-gem/lib/calabash-android/canned_steps.md). You can also write your own custom steps using the [Ruby API](https://github.com/calabash/calabash-android/blob/master/documentation/ruby_api.md).

## Using the console

If you just want to play around with your view and query / check different elements, the console comes in very handy. From within your
Android project you can run `calabash-android console ./bin/CalabashTest.apk` to start the console. Use the start_test_server_in_background
command to launch your app in the running emulator. And then you can use the Ruby API functions here. Use `query("button")` to get started. 
Check out [this tutorial](http://blog.lesspainful.com/2012/12/18/Android-Query/) on the query function.
