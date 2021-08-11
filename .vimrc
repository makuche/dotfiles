" Show line number
set number

" Change color scheme
colorscheme Monokai

" Color config for ssh session
set t_Co=256

" Remove bell sound in vim
set visualbell

"Jumping to line by #<ENTER> instead of #G 
nnoremap <CR> G

" The following enables swapping lines with AltGr+Up/Down
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <A-up> :call <SID>swap_up()<CR>
noremap <silent> <A-down> :call <SID>swap_down()<CR>
