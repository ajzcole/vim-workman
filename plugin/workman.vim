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
	nnoremap <nowait> y h
	nnoremap <nowait> n j
	nnoremap <nowait> e k
	nnoremap <nowait> o l
	onoremap <nowait> y h
	onoremap <nowait> n j
	onoremap <nowait> e k
	onoremap <nowait> o l
	" Mapping other rearrangements
	nnoremap <nowait> h e
	nnoremap <nowait> j n
	nnoremap <nowait> k y
	nnoremap <nowait> l o
	onoremap <nowait> h e
	onoremap <nowait> j n
	onoremap <nowait> k y
	onoremap <nowait> l o
endfunction

function! WorkmanLayoutOff()
	let g:WorkmanLayout=0
	" Unmapping the movement keys
	nunmap y
	nunmap n
	nunmap e
	nunmap o
	ounmap y
	ounmap n
	ounmap e
	ounmap o
	" Unmapping other rearrangements
	nunmap h
	nunmap j
	nunmap k
	nunmap l
	ounmap h
	ounmap j
	ounmap k
	ounmap l
endfunction

call WorkmanLayout()
