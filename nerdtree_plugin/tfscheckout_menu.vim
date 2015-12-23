" --------------------------------------------------
" [TFSCheckout] {{{
" --------------------------------------------------
" call NERDTreeAddMenuSeparator()

call NERDTreeAddMenuItem({
			\ 'text': 'TFS Check (o)ut',
			\ 'shortcut': 'o',
			\ 'callback': 'TFSCheckoutCallback' })


fu! TFSCheckoutCallback()
	let currentNode = g:NERDTreeFileNode.GetSelected()
	let currentFile = currentNode.path._strForGlob()

	cal TFSCheckout(currentFile, 0)

	cal currentNode.path.refresh()
	cal NERDTreeRender()
endf

" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
