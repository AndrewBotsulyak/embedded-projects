# The following five lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.22)

# Общие компоненты монтировки и пульта (lx200_format и др.) — папка уровнем выше
set(EXTRA_COMPONENT_DIRS "${CMAKE_CURRENT_LIST_DIR}/../components")

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(eq3-2-handmade)

# FastAccelStepper doesn't initialize i2s_std_clk_config_t::ext_clk_freq_hz (new in IDF 6)
idf_component_get_property(fas_lib gin66__fastaccelstepper COMPONENT_LIB)
target_compile_options(${fas_lib} PRIVATE -Wno-missing-field-initializers)
