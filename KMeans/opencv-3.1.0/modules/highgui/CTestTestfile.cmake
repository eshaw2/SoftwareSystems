# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/highgui
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_highgui "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
SET_TESTS_PROPERTIES(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
