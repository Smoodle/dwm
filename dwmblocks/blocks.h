//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/.config/dwm/blocks/disk", 300, 0},
	{"", "~/.config/dwm/blocks/cpu", 10, 0},
	{"", "~/.config/dwm/blocks/ram", 10, 0},
	{"", "~/.config/dwm/blocks/date", 60, 0},
	{"", "~/.config/dwm/blocks/time", 60, 20},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
