# ofWorks

You can use the following script to test ofWorks fork<br>
```bash
curl -fsSL https://dmtr.org/of.sh | bash
```
This script install everything needed (libraries, ofGen) to run your projects<br>
ofGen is a command line project generator and it will be available in your path.<br>
Tested on macOS / Linux (Ubuntu x86_64) and Windows.<br>

Pre requisites in Windows are <a href="https://git-scm.com/install/windows" target="_blank">Github for Windows</a> and <a href="https://chalet-work.space/download/" target="_blank">Chalet Build System</a>.

## ofGen
ofgen tool will be installed and available in path, so you can navigate to your project folder and call it, like
```sh
cd $ofw/apps/workApp/awesome
ofgen
```
or
```sh
ofgen buildrun
```
without parameters it will detect your platform and create the recommended templates for your platform.
Today the default ones are:

| Platform | Templates |
| :--- | :---: |
| macOS | XCode, Chalet, ZED |
| Windows | Chalet, ZED |
| Linux | Chalet, ZED |


## Differences
Cairo functionality is moved to a new core addon called ```ofxCairo```.

All URL handling libraries and frameworks are moved to an addon called ofxURL. Not adding this by default reduces about 4 Megabytes of binary final size, it probably compiles faster.

All classic OF math functionality was moved to an addon called ```ofxMath```, include it if you need to use any of this:
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
