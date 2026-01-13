cmake_minimum_required(VERSION 4.2)
project(prg)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(prg
  ./src/main.c
)

# add_subdirectory()

# include_directories(prg PRIVATE
#   ${PROJECT_SOURCE_DIR}/lib
# )

# target_link_libraries(prg
#   ${PROJECT_SOURCE_DIR}/lib
# )
