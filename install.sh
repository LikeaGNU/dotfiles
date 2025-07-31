#!/bin/bash

# TODO
function check_dir_exists() {
	local stowpkg_dir
	local stowed_path
	local script_path
	local real_script_path

	script_path="$(dirname $0)"
	real_path_script="$(realpath $script_path)"	

	for stowpkg_dir in "$@"; do
		local real_path_pkg
		local handler_file

		real_path_pkg="$(realpath $stowpkg_dir)"

		printf "%s -> %s\n" "$real_path_script" "$real_path_pkg"

	done

}

function get_stow_dirs() {
	local dirs
	local cmd_status

	stow_dirs="$(find $PWD -type d -and \
		-not -empty)"
	cmd_status="$?"

	if [ "$cmd_status" -eq 0 ]; then
		echo "$stow_dirs"
	else
		printf "Nie znaleziono katalogów stow... Wychodzę.\n"
		exit 1
	fi
}

function stow_dirs() {
	local stowdir

	for stowdir in "$@"; do
		stow -s "$stowdir"
	done
}


function get_stow() {
	local stow_path
	local cmd_state


	stow_path="$(which stow)"
	cmd_state="$?"

	if [ "$cmd_state" -eq 0 ]; then
		echo "$stow_path"
	else
		printf "Nie znaleziono stow... Wychodzę.\n"
		exit 126
	fi

}

function main() {
	local stow_path
	local stow_dirs

	stow_path="$(get_stow)"
	stow_dirs="$(get_stow_dirs)"

	# TODO
	# check_dir_exists "$stow_dirs"
}

main
