# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/objdetect
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/objdetect
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_objdetect "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_objdetect" "--gtest_output=xml:opencv_test_objdetect.xml")
SET_TESTS_PROPERTIES(opencv_test_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
ADD_TEST(opencv_perf_objdetect "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml")
SET_TESTS_PROPERTIES(opencv_perf_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Performance" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/performance")
ADD_TEST(opencv_sanity_objdetect "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Sanity" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/sanity")
