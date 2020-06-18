function approxdir()
{
	cd $1; shift
	for dir in "$@"; do
		cd *$dir*
	done
}

function crs()
{
	approxdir $DocRoot/Courses $@
}

function uo()
{
	approxdir $UORoot $@
}

function repo()
{
	approxdir $RepoRoot $@
}

function rs()
{	
	approxdir $DocRoot/Research $@
}

function proj()
{
	approxdir $DocRoot/Projects $@
}

# Implementation of terminal trash can.

function trash()
{
	for file in "$@"; do
		mv $file ~/.rbin/"$(date +%Y.%m.%d-%H:%M:%S)-$file";
	done
}

function emptytrash()
{
	rm -r ~/.rbin;
	mkdir ~/.rbin;
}
