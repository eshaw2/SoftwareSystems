# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_imgcodecs "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_imgcodecs" "--gtest_output=xml:opencv_test_imgcodecs.xml")
SET_TESTS_PROPERTIES(opencv_test_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
ADD_TEST(opencv_perf_imgcodecs "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml")
SET_TESTS_PROPERTIES(opencv_perf_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Performance" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/performance")
ADD_TEST(opencv_sanity_imgcodecs "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Sanity" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/sanity")
