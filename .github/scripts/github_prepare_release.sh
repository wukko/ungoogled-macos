#!/bin/bash -eux

_root_dir="$(dirname "$(greadlink -f "$0")")"
_main_repo="$_root_dir/helium-chromium"

_ungoogled_version=$("$_root_dir/devutils/print_tag_version.sh")

_file_name_base="ungoogled_chromium_${_ungoogled_version}"
_x64_file_name="${_file_name_base}_x86_64-macos.dmg"
_arm64_file_name="${_file_name_base}_arm64-macos.dmg"

echo "x64_file_name=$_x64_file_name" >> $GITHUB_OUTPUT
echo "arm64_file_name=$_arm64_file_name" >> $GITHUB_OUTPUT
echo "release_tag_version=$_ungoogled_version" >> $GITHUB_OUTPUT
echo "release_name=$_ungoogled_version" >> $GITHUB_OUTPUT
