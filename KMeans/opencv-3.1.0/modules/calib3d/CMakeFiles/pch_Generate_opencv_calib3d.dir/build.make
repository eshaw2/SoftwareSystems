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

# Utility rule file for pch_Generate_opencv_calib3d.

# Include the progress variables for this target.
include modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/progress.make

modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d: modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch

modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch: modules/calib3d/src/precomp.hpp
modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch: modules/calib3d/precomp.hpp
modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch: lib/libopencv_calib3d_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp.gch/opencv_calib3d_Release.gch"
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d && /usr/bin/cmake -E make_directory /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/precomp.hpp.gch
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -fPIC "-D__OPENCV_BUILD=1" "-DCVAPI_EXPORTS" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/include/opencl/1.2" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/ippicv/unpack/ippicv_lnx/include" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/include/opencl/1.2" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/3rdparty/ippicv/unpack/ippicv_lnx/include" -isystem"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/src" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/core/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/flann/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgproc/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/ml/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/imgcodecs/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/videoio/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/highgui/include" -I"/home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/features2d/include" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -DCVAPI_EXPORTS -x c++-header -o /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/precomp.hpp

modules/calib3d/precomp.hpp: modules/calib3d/src/precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp"
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d && /usr/bin/cmake -E copy_if_different /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/src/precomp.hpp /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/precomp.hpp

pch_Generate_opencv_calib3d: modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d
pch_Generate_opencv_calib3d: modules/calib3d/precomp.hpp.gch/opencv_calib3d_Release.gch
pch_Generate_opencv_calib3d: modules/calib3d/precomp.hpp
pch_Generate_opencv_calib3d: modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/build.make
.PHONY : pch_Generate_opencv_calib3d

# Rule to build all files generated by this target.
modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/build: pch_Generate_opencv_calib3d
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/build

modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/clean:
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_calib3d.dir/cmake_clean.cmake
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/clean

modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/depend:
	cd /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d /home/eshaw/OpenCV-install-stuff/opencv-3.1.0 /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d /home/eshaw/OpenCV-install-stuff/opencv-3.1.0/modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_calib3d.dir/depend

