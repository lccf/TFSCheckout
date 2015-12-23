" --------------------------------------------------
" [TFSCheckout] {{{
" --------------------------------------------------
if !exists('g:tf_login') | let g:tf_login=' ' | en
fu! TFSCheckout(path, refresh)
	" ec a:path
	if !exists('g:tf')
		echohl ErrorMsg | echo "g:tf is not define" | echohl None
	en
	exec ('!'.g:tf.' checkout "'.a:path.'" '.g:tf_login)
	" exec('!'.g:tf.' checkout '.path.g:tf_login)
	if a:refresh == 1 | edit! | en
endf

com! -nargs=? TFSCheckout cal TFSCheckout(expand('%:p'), 1)

" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
