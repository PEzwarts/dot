function m
    # if [ -f ./xmake.lua ]
    #     xmake project -k compile_commands
    #     xmake $argv
    # end

    for file in (find . -maxdepth 1 -type f);
        if [ (file $file | grep "ELF") ];
            $file
        end
    end
end

function mc
    # xmake clean

    meson compile -C build
end

function mn
    # if [ "$argv[2]" = cpp ]
    #     xmake create -l c++ $argv[1]
    #     cd $argv[1]
    # else
    #     xmake create -l $argv[2] $argv[1]
    #     cd $argv[1]
    # end

    mkdir $argv[1]
    cd $argv[1]

    meson init --language=$argv[2] --name=$argv[1]
    meson setup build
end

export PKG_CONFIG_PATH=/usr/lib/pkgconfig
