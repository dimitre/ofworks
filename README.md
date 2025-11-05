```
 o-o  o--o o       o  o-o  o--o  o  o  o-o
o   o |    |       | o   o |   | | /  |
|   | O-o  o   o   o |   | O-Oo  OO    o-o
o   o |     \ / \ /  o   o |  \  | \      |
 o-o  o      o   o    o-o  o   o o  o o--o
```
You can use the following script to test ofWorks fork<br>
```bash
curl -fsSL https://dmtr.org/of.sh | bash
```
This script install everything needed (libraries, ofGen) to run your projects<br>
ofGen is a command line project generator and it will be available in your path.<br>
Tested on macOS / Linux (Ubuntu x86_64) and Windows.<br>

Windows: Pre-requisites are <a href="https://git-scm.com/install/windows" target="_blank">Git for Windows</a> and <a href="https://chalet-work.space/download/" target="_blank">Chalet Build System</a>.
You run the install script from git bash. after installation is complete you can run Powershell or other shell to build and run your projects.

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
[More ofGen info here](ofGen.md)

without parameters it will detect your platform and create the recommended templates for your platform.
Today the default ones are:

| Platform | Templates |
| :--- | :---: |
| macOS | XCode, Chalet, ZED |
| Windows | Chalet, ZED |
| Linux | Chalet, ZED |

VSCode to be re-added soon.<br>

## Chalet / ZED combo
For a unified experience in all platforms you can install <a href="https://zed.dev" target="_blank">ZED editor</a><br>
after running ofGen you can open your project: ```zed . ``` and build by pressing Command + Shift + R in macOS, or Alt + Shift + R in Windows / Linux<br>



## openFrameworks / ofWorks Differences
in ofWorks:<br>
Core doesn't have Cairo functionality. Moved aside to an addon ```ofxCairo``` (libraries are not ready yet).<br>
Core doesn't have ofLoadURL capabilities, moved aside to an addon ```ofxURL``` (libs not ready)<br>
This reduces 4 megabytes of final binary size.<br>
Vintage of math is moved aside to an addon called ofxMath. core only uses glm operations. it can be added if needed to access any of this objects: <br>
```ofPoint, ofMatrix3x3, ofMatrix4x4, ofQuaternion, ofVec2f, ofVec3f, ofVec4f, ofVectorMath```<br>
FreeImage was removed and now ofImage has a mango library backend (faster and more modern). For now loading and saving of TIF, PNG and JPG is OK. Some other operations to be implemented.
