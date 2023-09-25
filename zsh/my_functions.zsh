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

function repo()
{
	cdd $RepoRoot $@
}

