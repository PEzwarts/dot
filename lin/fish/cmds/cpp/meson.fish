function m
    for file in (find . -maxdepth 2 -type f)
        if [ file $file | grep ELF ]
            $file
        end
    end
end

function ma
    # if [ ! $(pwd | grep "subprojects") ];
    #     if [ ! -d ./subprojects ];
    #         mkdir ./subprojects
    #     end
    # end
    #
    # meson wrap install $argv[1]
    #
    #     cd ./subprojects
    #     touch $argv[2].wrap
    #
    #     echo "
    # [wrap-git]
    # url = https://github.com/$argv[1].git
    # revision = head
    # " > ./$argv[2].wrap
end

function mr
end

function mc
    # if [ ! -f ./conanfile.txt ]
    #     touch conanfile.txt
    # else
    #     conan install . --output-folder=./build --build=missing
    # end
    #
    # if [ ! -f ./build/conan_meson_native.ini ]
    #     meson setup --reconfigure --native-file conan_meson_native.ini build
    #     meson compile -C build
    # else
    #     meson compile -C build
    # end

    meson compile -C build
end

function mn
    mkdir $argv[1]
    cd $argv[1]

    mkdir src

    touch ./meson.build
    touch ./src/main.$argv[2]

    echo "project(
  '$argv[1]',
  '$argv[2]',
  version : '0.1',
  meson_version : '>= 1.3.0',
  default_options : ['warning_level=3', 'cpp_std=c++23'],
)

deps = []

src = [
  './src/main.$argv[2]',
]

exe = executable(
  '$argv[1]',
  [src],
  install : true,
  dependencies : deps,
)

# test('$argv[1]', exe)" > ./meson.build

    echo "int main() {}" >./src/main.$argv[2]

    meson setup build

    cd ..
end
