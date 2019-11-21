
if !exists("g:scroll_str")
    let g:scroll_str = "███"
endif

function! s:displayBar()
    set nomore


    let perc = ( winwidth(0) -10 - len(g:scroll_str) ) * getpos('.')[1] / line('$')

    echohl None
    echon repeat(' ', perc)
    " echohl Search
    echon g:scroll_str
    " echohl None
    
endfunction


autocmd CursorHold * call s:displayBar()

nnoremap <silent> n n:call s:displayBar()<CR>
nnoremap <silent> N N:call s:displayBar()<CR>
nnoremap <silent> * *:call s:displayBar()<CR>
nnoremap <silent> # #:call s:displayBar()<CR>
nnoremap <silent> g; g;:call s:displayBar()<CR>
nnoremap <silent> `` ``:call s:displayBar()<CR>
