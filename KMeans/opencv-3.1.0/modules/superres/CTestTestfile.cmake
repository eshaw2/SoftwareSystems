# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_superres "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_superres" "--gtest_output=xml:opencv_test_superres.xml")
SET_TESTS_PROPERTIES(opencv_test_superres PROPERTIES  LABELS "Main;opencv_superres;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
ADD_TEST(opencv_perf_superres "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_superres" "--gtest_output=xml:opencv_perf_superres.xml")
SET_TESTS_PROPERTIES(opencv_perf_superres PROPERTIES  LABELS "Main;opencv_superres;Performance" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/performance")
ADD_TEST(opencv_sanity_superres "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_superres" "--gtest_output=xml:opencv_perf_superres.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_superres PROPERTIES  LABELS "Main;opencv_superres;Sanity" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/sanity")
