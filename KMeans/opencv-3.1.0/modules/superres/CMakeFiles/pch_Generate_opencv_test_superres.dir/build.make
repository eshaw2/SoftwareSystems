# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eshaw/OpenCV-install-stuff/opencv-3.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eshaw/OpenCV-install-stuff/opencv-3.1.0

# Utility rule file for pch_Generate_opencv_test_superres.

# Include the progress variables for this target.
include modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/progress.make

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch

modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch: modules/superres/test/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch: modules/superres/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch: lib/libopencv_test_superres_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp.gch/opencv_test_superres_Release.gch"
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres && /usr/bin/cmake -E make_directory /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test_precomp.hpp.gch
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/include/opencl/1.2" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/ippicv/unpack/ippicv_lnx/include" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/include/opencl/1.2" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/ippicv/unpack/ippicv_lnx/include" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/ts/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/videoio/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/core/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgproc/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/video/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/videoio/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/core/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgproc/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/videoio/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/highgui/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Winit-self -Wpointer-arith -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -Wno-undef -Wno-shadow -x c++-header -o /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test_precomp.hpp

modules/superres/test_precomp.hpp: modules/superres/test/test_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp"
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres && /usr/bin/cmake -E copy_if_different /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test/test_precomp.hpp /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/test_precomp.hpp

pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_Release.gch
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp
pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build.make
.PHONY : pch_Generate_opencv_test_superres

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build: pch_Generate_opencv_test_superres
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean:
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend:
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend

