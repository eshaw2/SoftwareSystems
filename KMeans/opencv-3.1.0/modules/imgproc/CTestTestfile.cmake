# CMake generated Testfile for 
# Source directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgproc
# Build directory: /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_imgproc "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
SET_TESTS_PROPERTIES(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/accuracy")
ADD_TEST(opencv_perf_imgproc "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml")
SET_TESTS_PROPERTIES(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/performance")
ADD_TEST(opencv_sanity_imgproc "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/test-reports/sanity")
