# OFWorks

You can use the following script to test OFWorks fork (macOS only now).
This script will bootstrap installation, clone this fork and install libs, compile and install ofgen tool (projectGenerator substitute here) to your path.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dimitre/ofworks/refs/heads/main/i4.sh)" pwd
```


## ofGen
to create a project you can go to your project folder in terminal and invoke ofGen
you can pass parameters like this
```
cd $ofw/apps/workApp/awesome
ofGen templates=zed,macos,make addons=ofxMidi,ofxOpencv ofpath=../../.. path=/Volumes/tool/Transcend
```

or use a configuration file called ```of.yml``` on your project folder, like the following example
if you have this file you can just invoke ```ofGen``` from your project folder and it is done
You can use ```ofgen import``` to create a default of.yml file from your addons.make.

```yml
# name: XPFlagship2024

ofpath: ../../..

addons:
  - ofxAssimpModelLoader
  - ofxMicroUI
  # - ofxMicroUIMidiController
  - ofxTools
  - ofxScenes
  - ofxNetwork
  - ofxOsc
  # - ofxSyphon
  - ofxTweeny
  - ofxVideoRecorder
# - ofxMidi

templates: [macos, zed, make]
# platforms: [osx]

sources:
  # - ../XP/src
  # - ../DEDGE-RIO/src
  - ../XP/src/additional
  - ../Aura/src2 #only testing

defines:
  - NANOVG_GL2_IMPLEMENTATION

```

## Differences

This fork doesn't include Classic Math by default (ofVec3f)
if you need any of those types you can add the addon ```ofxMath``` to your project and use ```#include "ofxMath.h"``` in your project
```
ofMatrix3x3.cpp
ofMatrix3x3.h
ofMatrix4x4.cpp
ofMatrix4x4.h
ofPoint.h
ofQuaternion.cpp
ofQuaternion.h
ofVec2f.cpp
ofVec2f.h
ofVec3f.h
ofVec4f.cpp
ofVec4f.h
ofVectorMath.h
```
