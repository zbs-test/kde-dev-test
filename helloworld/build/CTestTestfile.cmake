# CMake generated Testfile for 
# Source directory: /home/zbs/桌面/local/kde/helloworld
# Build directory: /home/zbs/桌面/local/kde/helloworld/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/usr/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/home/zbs/桌面/local/kde/helloworld/build/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
set_tests_properties(appstreamtest PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;165;add_test;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;183;appstreamtest;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;0;;/home/zbs/桌面/local/kde/helloworld/CMakeLists.txt;12;include;/home/zbs/桌面/local/kde/helloworld/CMakeLists.txt;0;")
subdirs("src")
