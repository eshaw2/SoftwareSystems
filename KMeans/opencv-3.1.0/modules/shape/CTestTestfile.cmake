# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/shape
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/shape
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_shape "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_shape" "--gtest_output=xml:opencv_test_shape.xml")
SET_TESTS_PROPERTIES(opencv_test_shape PROPERTIES  LABELS "Main;opencv_shape;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
