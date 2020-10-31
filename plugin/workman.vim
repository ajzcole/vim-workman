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
	nnoremap y <left>
	nnoremap n <down>
	nnoremap e <up>
	nnoremap o <right>
	cnoremap y <left>
	cnoremap n <down>
	cnoremap e <up>
	cnoremap o <right>
	" Mapping other rearrangements
	nnoremap h e
	nnoremap j n
	nnoremap k y
	nnoremap l o
	cnoremap h e
	cnoremap j n
	cnoremap k y
	cnoremap l o
endfunction

function! WorkmanLayoutOff()
	let g:WorkmanLayout=0
	" Unmapping the movement keys
	nunmap y
	nunmap n
	nunmap e
	nunmap o
	cunmap y
	cunmap n
	cunmap e
	cunmap o
	" Unmapping other rearrangements
	nunmap h
	nunmap j
	nunmap k
	nunmap l
	cunmap h
	cunmap j
	cunmap k
	cunmap l
endfunction

call WorkmanLayout()
