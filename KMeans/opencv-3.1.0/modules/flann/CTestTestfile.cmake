# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/flann
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_flann "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
SET_TESTS_PROPERTIES(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
