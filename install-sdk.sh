#!/bin/sh

# Install SDK
wget "http://dl.google.com/android/android-sdk_r${sdk_version}-linux.tgz"
tar zxf "android-sdk_r${sdk_version}-linux.tgz"
rm "android-sdk_r${sdk_version}-linux.tgz"

# Set environment variables
export ANDROID_HOME=${PWD}/android-sdk-linux
export PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"

type android || { echo "Path: $PATH"; echo 'Android not available after installation, terminating.'; exit 1; }

# Write environment variables to $profile
echo "export ANDROID_HOME=\"${ANDROID_HOME}\"" | sudo tee -a $profile
echo "export ANDROID_SDK_VERSION=\"${sdk_version}\"" | sudo tee -a $profile
echo "export PATH=\"${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools\"" | sudo tee -a $profile

# Echo profile
echo -e "$profile updated to:\n\n$(cat $profile)"
