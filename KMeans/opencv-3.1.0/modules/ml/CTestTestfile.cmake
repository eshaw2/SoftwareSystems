# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/ml
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_ml "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_ml" "--gtest_output=xml:opencv_test_ml.xml")
SET_TESTS_PROPERTIES(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
