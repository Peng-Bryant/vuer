# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/example_getDepthFrame.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/example_getDepthFrame.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/example_getDepthFrame.dir/flags.make

examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o: examples/CMakeFiles/example_getDepthFrame.dir/flags.make
examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o: ../examples/example_getDepthFrame.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o"
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o -c /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/examples/example_getDepthFrame.cc

examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.i"
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/examples/example_getDepthFrame.cc > CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.i

examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.s"
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/examples/example_getDepthFrame.cc -o CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.s

# Object files for target example_getDepthFrame
example_getDepthFrame_OBJECTS = \
"CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o"

# External object files for target example_getDepthFrame
example_getDepthFrame_EXTERNAL_OBJECTS =

../bins/example_getDepthFrame: examples/CMakeFiles/example_getDepthFrame.dir/example_getDepthFrame.cc.o
../bins/example_getDepthFrame: examples/CMakeFiles/example_getDepthFrame.dir/build.make
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
../bins/example_getDepthFrame: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
../bins/example_getDepthFrame: examples/CMakeFiles/example_getDepthFrame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bins/example_getDepthFrame"
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_getDepthFrame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/example_getDepthFrame.dir/build: ../bins/example_getDepthFrame

.PHONY : examples/CMakeFiles/example_getDepthFrame.dir/build

examples/CMakeFiles/example_getDepthFrame.dir/clean:
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/example_getDepthFrame.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/example_getDepthFrame.dir/clean

examples/CMakeFiles/example_getDepthFrame.dir/depend:
	cd /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/examples /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples /home/isaac/jetson-model-deployment/third_party/UnitreecameraSDK/build/examples/CMakeFiles/example_getDepthFrame.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/example_getDepthFrame.dir/depend

