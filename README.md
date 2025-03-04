# OFWork

You can use the following script to test OFWork fork (macOS only now).
This script will bootstrap installation, clone this fork and install libs, install ofgen tool (projectGenerator substitute here) to your path.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dimitre/ofworks/refs/heads/main/i.sh)" pwd
```


## ofGen
Install script clones OF, install libs and compiles ofGen (projectGenerator alternative)

to create a project you can go to your project folder in terminal and invoke ofGen
you can pass parameters like this
```
ofGen templates=zed,macos,make addons=ofxMidi,ofxOpencv ofpath=../../.. path=/Volumes/tool/Transcend
```

or use a configuration file called ```of.yml``` on your project folder, like the following example
if you have this file you can just invoke ```ofGen``` from your project folder and it is done

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
