function cdd()
{
	cd $1; shift
	for dir in "$@"; do
		cd *$dir*
	done
}


if [[ MY_LOCAL_MACHINE ]]; then

	function crs()
	{
		cdd $DocRoot/Archive/Courses $@
	}

	function repo()
	{
		cdd $RepoRoot $@
	}

	function proj()
	{
		cdd $DocRoot/Cloud/Projects $@
	}

	function doc()
	{
		cdd $DocRoot/Cloud/Documents $@
	}

fi

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
