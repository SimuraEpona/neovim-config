call defx#custom#option('_', {
      \ 'columns': 'indent:icons:filename:type',
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

nmap <silent> <Leader>e :Defx <cr>
autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
endfunction

function! s:defx_toggle_tree() abort
	" Open current file, or toggle directory expand/collapse
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction
