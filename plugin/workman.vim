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
	nnoremap y h
	nnoremap n j
	nnoremap e k
	nnoremap o l
	onoremap y h
	onoremap n j
	onoremap e k
	onoremap o l
	" Mapping other rearrangements
	nnoremap h e
	nnoremap j n
	nnoremap k y
	nnoremap l o
	onoremap h e
	onoremap j n
	onoremap k y
	onoremap l o
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
