
# ofGen
ofGen is a command line app, installed to your path (if you allow in installation step)
if you need to re-run installation step you can go
```
cd $ofw/ofgen
./compile.sh
```

Basic usage, you go to your folder project and invoke
```
cd $ofw/apps/Work2026/transmutation
ofgen
```
without parameters it will detect your platform and install recommended templates.

My favorite application is going to an openFrameworks project and run
```
ofgen import
```

this will import project data (addons list) to a file called of.yml in project folder.<br>
in this file there is a "recipe" of all settings to build the project.<br>
The nice thing is the project can behave exactly like an addon, so you can use a "libs" folder to test some library without addon, or a variation of OpenCV with different compilation settings.

One can invoke parameters like this also.
```
cd $ofw/apps/workApp/awesome
ofgen templates=zed,macos,make addons=ofxMidi,ofxOpencv ofpath=../../.. path=/Volumes/tool/Transcend
```
but usually it is more useful to test some template quickly like
```
ofgen templates=vscode,make
```

## Templates
Templates means any mixture of Code Editor (ZED, VSCode), Build Systems (make, chalet) or Both (XCode, Visual Studio 2022).
if you run ```ofgen open``` it will open the first template that is a Code Editor in templates list.
if you run ```ofgen buildrun``` it will invoke the first build system listed in templates list.

if we use of.yml like this:
```yaml
templates: [macos, zed, make]
```
```ofgen open ``` opens xcode, and ```ofgen buildrun``` calls xcodebuild.

in this other case ```ofgen open ``` opens zed, and ```ofgen buildrun``` calls make RunRelease.
```yaml
templates: [zed, make, macos]
```

## Recipe of.yml
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

sources:
  # - ../XP/src
  # - ../DEDGE-RIO/src
  - ../XP/src/additional
  - ../Aura/src2 #only testing

defines:
  - NANOVG_GL2_IMPLEMENTATION
  - FORCE_RGFW
```
