function cecho() {
	local msg=()

	# Foreground
	local BLACK="\e[30m"
	local RED="\e[31m"
	local GREEN="\e[32m"
	local YELLOW="\e[33m"
	local BLUE="\e[34m"
	local PURPLE="\e[35m"
	local CYAN="\e[36m"
	local WHITE="\e[37m"

	# Background
	local BG_BLACK="\e[40m"
	local BG_RED="\e[41m"
	local BG_GREEN="\e[42m"
	local BG_YELLOW="\e[43m"
	local BG_BLUE="\e[44m"
	local BG_PURPLE="\e[45m"
	local BG_CYAN="\e[46m"
	local BG_WHITE="\e[47m"

	# Action
	local DONE="\e[0m"
	local HIGHLIGHT="\e[1m"
	local UNDERLINE="\e[4m"
	local BLINK="\e[5m"
	local REVERSE="\e[7m"
	local INVISIBLE="\e[8m"

	while [[ $# -gt 0 ]]; do
		case $1 in

		# Foreground
		-bk | -black) msg+=("${BLACK}{$2}") && shift ;;
		-r | -red) msg+=("${RED}${2}") && shift ;;
		-g | -green) msg+=("${GREEN}${2}") && shift ;;
		-y | -yellow) msg+=("${YELLOW}${2}") && shift ;;
		-b | -blue) msg+=("${BLUE}${2}") && shift ;;
		-m | -magenta | -p | -purple) msg+=("${MAGENTA}${2}") && shift ;;
		-c | -cyan) msg+=("${CYAN}${2}") && shift ;;
		-gr | -gray | -w | -white) msg+=("${WHITE}${2}") && shift ;;

		# Background
		-bbk | -b_black) msg+=("${BG_BLACK}{$2}") && shift ;;
		-br | -b_red) msg+=("${BG_RED}${2}") && shift ;;
		-bg | -b_green) msg+=("${BG_GREEN}${2}") && shift ;;
		-by | -b_yellow) msg+=("${BG_YELLOW}${2}") && shift ;;
		-bb | -b_blue) msg+=("${BG_BLUE}${2}") && shift ;;
		-bm | -b_magenta | -bp | -b_purple) msg+=("${BG_MAGENTA}${2}") && shift ;;
		-bc | -b_cyan) msg+=("${BG_CYAN}${2}") && shift ;;
		-bgr | -b_gray | -bw | -b_white) msg+=("${BG_WHITE}${2}") && shift ;;
		
		# Action
		-D | -done) msg+=("${DONE}${2}") && shift ;;
		-H | -highlight) msg+=("${HIGHLIGHT}${2}") && shift ;;
		-U | -underline) msg+=("${UNDERLINE}${2}") && shift ;;
		-B | -blink) msg+=("${BLINK}${2}") && shift ;;
		-R | -reverse) msg+=("${REVERSE}${2}") && shift ;;
		-I | -invisible) msg+=("${INVISIBLE}${2}") && shift ;;

		*) msg+=("$1") ;;
		esac
		shift
	done

	echo -e "${DONE}${msg[@]}${DONE}" 
}

