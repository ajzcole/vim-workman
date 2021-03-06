let g:WorkmanLayout=0

function! ToggleWorkmanLayout()
	if !g:WorkmanLayout
		call WorkmanLayout()
		echo "Workman Layout: On"
	else
		call WorkmanLayoutOff()
		echo "Workman Layout: Off"
	endif
endfunction

function! WorkmanLayout()
	let g:WorkmanLayout=1
	" Mapping the movement keys
	nnoremap <nowait> <buffer> y h
	nnoremap <nowait> <buffer> n j
	nnoremap <nowait> <buffer> e k
	nnoremap <nowait> <buffer> o l
	onoremap <nowait> <buffer> y h
	onoremap <nowait> <buffer> n j
	onoremap <nowait> <buffer> e k
	onoremap <nowait> <buffer> o l
	" Mapping other rearrangements
	nnoremap <nowait> <buffer> h e
	nnoremap <nowait> <buffer> j n
	nnoremap <nowait> <buffer> k y
	nnoremap <nowait> <buffer> l o
	onoremap <nowait> <buffer> h e
	onoremap <nowait> <buffer> j n
	onoremap <nowait> <buffer> k y
	onoremap <nowait> <buffer> l o
endfunction

function! WorkmanLayoutOff()
	let g:WorkmanLayout=0
	" Unmapping the movement keys
	nunmap <buffer> y
	nunmap <buffer> n
	nunmap <buffer> e
	nunmap <buffer> o
	ounmap <buffer> y
	ounmap <buffer> n
	ounmap <buffer> e
	ounmap <buffer> o
	" Unmapping other rearrangements
	nunmap <buffer> h
	nunmap <buffer> j
	nunmap <buffer> k
	nunmap <buffer> l
	ounmap <buffer> h
	ounmap <buffer> j
	ounmap <buffer> k
	ounmap <buffer> l
endfunction

call WorkmanLayout()
