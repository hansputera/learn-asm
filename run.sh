file=$1
sizeVar=${#file}

if [ $sizeVar -lt 1 ];
then
    echo "Masukan file!"
    echo "Contoh: run.sh hello_world.asm"
else
    if [ ! -f "${file}" ];
    then
        echo "File tidak ditemukan!"
    else
        nasm -f elf64 $file
        ld "${file%.*}.o" -o "${file%.*}"
        ./"${file%.*}"

        rm "${file%.*}"
        rm "${file%.*}.o"
    fi
fi