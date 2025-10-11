function m
    for file in (find . -maxdepth 2 -type f)
        if [ (file $file | grep "ELF") ]

            $file
        end
    end
end

function ma
end

function mr
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

    echo "
cmake_minimum_required(VERSION 3.5)
project($argv[1])
add_executable($argv[1] ./src/main.$argv[2])" >./CMakeLists.txt

    echo "int main() {}" >./src/main.$argv[2]
end
