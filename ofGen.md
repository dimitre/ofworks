
## ofGen
to create a project you can go to your project folder in terminal and invoke ofGen
you can pass parameters like this
```
cd $ofw/apps/workApp/awesome
ofgen templates=zed,macos,make addons=ofxMidi,ofxOpencv ofpath=../../.. path=/Volumes/tool/Transcend
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
