colo xcodedark
command! Light colo xcodelight
command! Dark colo xcodedark
augroup pythonfunctions
	au Filetype python packadd auto-pairs <bar> let g:AutoPairsFlyMode = 0
augroup END
