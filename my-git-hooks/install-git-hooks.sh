#!/bin/zsh


while [[ $# -gt 0 ]]
do
    case $1 in
        -t || --target-dir)
            target_dir=$2
            shift
            shift
            ;;
        *)
            printf "Invalid option passed: ${1}\n"
            exit 1
            ;;
    esac
done

if [[ -z ${target_dir} ]];
then
    printf "Target dir is a required argument, it specifies the top-most "
    printf "directory that will be the root to search for .git dirs\n"
    exit 2
fi

curr_dir=$(pwd)

printf "Searching for .git directories in ${target_dir}\n"
all_dirs=($(find ${target_dir} -type d -name ".git" | sed -E 's/(.*)/\"\1\"/g'))

for d in "${all_dirs[@]}"
do
    tmp_d=$( echo ${d} | tr -d '"')
    printf "Copying prepare-commit-msg hook to ${tmp_d}\n"
    cp ${curr_dir}/prepare-commit-msg ${tmp_d}/hooks/.
    printf "Copying successfull\n"
done

