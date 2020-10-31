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
	nmap y h
	nmap n j
	nmap e k
	nmap o l
	" Mapping other rearrangements
	nmap h e
	nmap j n
	nmap k y
	nmap l o
endfunction


function! WorkmanLayoutOff()
	let g:WorkmanLayout=0
	" Unmapping the movement keys
	nunmap y
	nunmap n
	nunmap e
	nunmap o
	" Unmapping other rearrangements
	nunmap h
	nunmap j
	nunmap k
	nunmap l
endfunction

call WorkmanLayout()
