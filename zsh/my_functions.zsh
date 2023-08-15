function cdd()
{
	for dir in "$@"; do
		if [[ $dir =~ .*/.* ]]; then
			cd $dir
		else
			cd *$dir*
		fi
	done
}


if [[ MY_LOCAL_MACHINE ]]; then

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

