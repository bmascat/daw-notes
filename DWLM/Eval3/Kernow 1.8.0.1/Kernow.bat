
REM If you have problems you might need to use the full path to java 1.6 such as "C:\program files\java\jre1.6.0_03\bin\java.exe"
REM Adjust the Xmx value to give Kernow more memory, such as -Xms512m

java -splash:lib/splash.gif -Xmx256m -cp "%CD%;extensions/*;lib/*;kernow.jar" net.sf.kernow.GUI