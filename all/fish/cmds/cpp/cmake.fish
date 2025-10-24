function m
    for file in (find . -maxdepth 2 -type f)
        if [ file $file | grep ELF ]
            $file
        end
    end
end

function ma
    if [ -f ./CMakeLists.txt ]
        if [ ! -d ./deps/ ]
            mkdir deps
        end

        cd ./deps
        git clone https://github.com/$argv[1].git
        cd ..
    end
end

function mr
    rm -r ./deps/$argv[1]
end

function mc
    cmake --build ./build/
end

function mn
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

include_directories($argv[1] PRIVATE ./deps/)
add_executable($argv[1] ./src/main.$argv[2])" >./CMakeLists.txt

    echo "int main() {}" >./src/main.$argv[2]
end
