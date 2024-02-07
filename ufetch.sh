#!/bin/sh
#
# ufetch-arch - tiny system info for arch

## INFO

# user is already defined
host="Arch"
os='Arch Linux'
kernel="$(uname -sr)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(pacman -Q | wc -l)"
shell="$(basename ${SHELL})"
wm="i3"
if [ -z "${WM}" ]; then
	if [ "${XDG_CURRENT_DESKTOP}" ]; then
		envtype='DE'
		WM="${XDG_CURRENT_DESKTOP}"
	elif [ "${DESKTOP_SESSION}" ]; then
		envtype='DE'
		WM="${DESKTOP_SESSION}"
	else
		envtype='WM'
	fi
else
	envtype='WM'
fi

## DEFINE COLORS

# probably don't change these
bold="$(tput bold)"
black="$(tput setaf 0)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 12)"
blue="$(tput setaf 4)"
magenta="$(tput setaf 5)"
cyan="$(tput setaf 6)"
white="$(tput setaf 7)"
reset="$(tput sgr0)"

# you can change these
lc="${reset}${bold}${yellow}"		# labels
nc="${reset}${bold}${cyan}"		# user and hostname
ic="${reset}${bold}${white}"	# info
c0="${reset}${bold}${cyan}"		# first color
c1="${reset}${blue}"			# second color
c2="${reset}${yellow}"
## OUTPUT

cat <<EOF


		${nc}${USER}${ic}@${nc}${host}${reset}
${c1}       /\\       ${lc}OS:        ${ic}${os}${reset}
${c1}      /  \\      ${lc}KERNEL:    ${ic}${kernel}${reset}
${c1}     /    \\     ${lc}UPTIME:    ${ic}${uptime}${reset}
${c1}    /      \\    ${lc}PACKAGES:  ${ic}${packages}${reset}
${c1}   /   ,,   \\   ${lc}SHELL:     ${ic}${shell}${reset}
${c2}  /   |  |   \\  ${lc}WM:        ${ic}${wm}${reset}
${c0} /_-''    ''-_\\ ${lc}COLORS:    ${ic}fjdkf 

EOF
