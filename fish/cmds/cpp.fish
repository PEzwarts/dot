function m
    # if [ -f ./xmake.lua ]
    #     xmake project -k compile_commands
    #     xmake $argv
    # end

    for file in (find . -maxdepth 2 -type f);
        if [ (file $file | grep "ELF") ];
            $file
        end
    end
end

function ma
    if [ ! $(pwd | grep "subprojects") ];
        if [ ! -d ./subprojects ];
            mkdir ./subprojects
        end
    end

    meson wrap install $argv[1]

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
    # xmake clean

    meson compile -C build
end

function mn
#     if [ "$argv[2]" = cpp ]
#         xmake create -l c++ $argv[1]
#         cd $argv[1]
#
#         echo "
# target('$argv[1]')
# set_kind('binary')
# add_files('src/*.cpp')
# " > ./xmake.lua
#     else
#         xmake create -l $argv[2] $argv[1]
#         cd $argv[1]
#
#         echo "
# target('$argv[1]')
# set_kind('binary')
# add_files('src/*.c')
# " > ./xmake.lua
#     end
#
#     echo "int main() {}" > ./src/main.$argv[2]

    mkdir $argv[1]
    cd $argv[1]

    meson init --language=$argv[2] --name=$argv[1]
    meson setup build

    echo "int main() {}" > ./$argv[1].$argv[2]
end

# export PKG_CONFIG_PATH=/usr/lib/pkgconfig
