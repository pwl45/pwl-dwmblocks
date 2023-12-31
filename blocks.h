//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/						/*Update Interval*/	/*Update Signal*/
	//memory usage
	{" ", "/$HOME/pwl-dwmblocks/messages.sh",				2,			0},

	{"", "/$HOME/pwl-dwmblocks/stocks.sh",					30,			0},


	{" | Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | tr -d 'i'",	2,			0},

	// battery info
	{" | Bat: ", "/$HOME/pwl-dwmblocks/bat.sh",				10,			0},

	{" Vol: ", "pulsemixer --get-volume | cut -d ' ' -f1",			1,			0},

	// network name
	{" | ", "/home/paul/scripts/network/netstrength",			5,			0},


	{" | ", "date",								1,			0},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "\0";
static unsigned int delimLen = 1;
