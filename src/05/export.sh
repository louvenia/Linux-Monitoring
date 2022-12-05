#!/bin/bash
export num_f="$(find $path -type d | wc -l)"
export five_f_path="$(du -h $path | sort -rh | head -5 | awk '{print$2}')"
export five_f_size="$(du -h $path | sort -rh | head -5 | awk '{print$1}')"
export num_fi="$(find $path -type f | wc -l)"
export conf_fi="$(find $path -type f -name "*.conf" | wc -l)"
export txt_fi="$(find $path -type f -name "*.txt" | wc -l)"
export exe_fi="$(find $path -perm a=x | wc -l)"
export log_fi="$(find $path -type f -name "*.log" | wc -l)"
export archive_fi="$(($(find $path -type f -name "*.zip" | wc -l) + $(find $path -type f -name "*.tar" | wc -l) + $(find $path -type f -name "*.gz" | wc -l) + $(find $path -type f -name "*.rar" | wc -l) ))"
export sym_links="$(find $path -type l | wc -l)"


export ten_fi_path="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk '{print$2}')"
export ten_fi_size="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk '{print$1}')"
export ten_fi_type="$(find $path -type f -exec du -h {} + | sort -rh | head -10 | awk -F'.' '{print$NF}')"

export ten_exe_fi_path="$(find $path -perm a=x -exec du -h {} + | sort -rh | head -10 | awk '{print$2}')"
export ten_exe_fi_size="$(find $path -perm a=x -exec du -h {} + | sort -rh | head -10 | awk '{print$1}')"
export ten_exe_fi_hash="$(find $path -perm a=x -exec md5sum {} + | sort -hr | head -10 | awk '{print$1}')"

./output.sh