//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/						/*Update Interval*/	/*Update Signal*/
	//memory usage
	{"", "dwmblocks-messages",				2,			0},

	/* {"", "$HOME/pwl-dotfiles/scripts/stocks.sh",					30,			0}, */


	{" | Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | tr -d 'i'",	2,			0},

	// battery info
	{" | Bat: ", "dwmblocks-battery",				10,			0},

	{" Vol: ", "dwmblocks-vol",			1,			0},

	// network name
	{" | ", "dwmblocks-netstrength",			5,			0},


	{" | ", "date \"+%b %d %H:%M:%S\"",								1,			0},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "\0";
static unsigned int delimLen = 1;
