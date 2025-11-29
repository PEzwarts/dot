function m
    for file in (find . -maxdepth 2 -type f)
        if [ file $file | grep ELF ]
            $file
        end
    end
end

function ma
    if [ -f ./CMakeLists.txt ]
        if [ ! -d ./lib/ ]
            mkdir lib
        end

        # wget https://github.com/$argv[1]/archive/refs/tags/$argv[2].tar.gz
        # tar xf ./$argv[2].tar.gz
        # rm $argv[2].tar.gz

        git submodule add https://github.com/$argv[1]/$argv[2] ./lib/$argv[2]
    end
end

function mr
    git rm ./lib/$argv[1]
end

function mc
    cmake --build ./build/ -j $argv[1]
end

function mn
    if [ ! $argv[1] ]
        return 0
    end

    if [ ! $argv[2] ]
        return 0
    end

    mkdir $argv[1]
    cd $argv[1]

    mkdir build
    mkdir src

    touch ./CMakeLists.txt
    touch ./src/main.$argv[2]

    cmake -B ./build/ -S .

    echo "cmake_minimum_required(VERSION 4.1)
project($argv[1])

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package()
target_link_libraries()

# include_directories($argv[1] PRIVATE ./lib/)
# add_subdirectory()

add_executable($argv[1] ./src/main.$argv[2])" >./CMakeLists.txt

    echo "int main() {}" >./src/main.$argv[2]

    cd ..
end
