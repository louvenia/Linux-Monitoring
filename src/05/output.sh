#!/bin/bash

path_f=($five_f_path)
size_f=($five_f_size)

path_fi=($ten_fi_path)
size_fi=($ten_fi_size)
type_fi=($ten_fi_type)

path_exe_fi=($ten_exe_fi_path)
size_exe_fi=($ten_exe_fis_size)
hash_exe_fi=($ten_exe_fi_hash)


echo "Total number of files (including all nested ones) = $num_f"

echo "TOP 5 files of maximum size arranged in descending order (path and size):"

for (( i=0; i<5; i++)); do
    if [[ -n ${path_f[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_f[i]}, "
        printf "${size_f[i]}\n"
    fi
done

echo "Total number of files = $num_fi"

echo "Number of:" 
echo "Configuration files (with the .conf extension) = $conf_fi"
echo "Text files = $txt_fi"
echo "Executable files = $exe_fi"
echo "Log files (with the extension .log) = $log_fi"  
echo "Archive files = $archive_fi"
echo "Symbolic links = $sym_links"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"

for (( i=0; i<10; i++)); do
    if [[ -n ${path_fi[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_fi[i]}, "
        printf "${size_fi[i]}, "
        printf "${type_fi[i]}\n"
   
    fi
done

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"

for (( i=0; i<10; i++)); do
    if [[ -n ${path_exe_fi[i]} ]]; then
        printf "$((i+1))"" - "
        printf "${path_exe_fi[i]}, "
        printf "${size_exe_fi[i]}, "
        printf "${has_exe_fi[i]}\n"
    fi
done
export end=`date +%s`
echo "Script execution time (in seconds) = "$(($end - $start))