
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


autocmd CursorHold * call<SID>:displayBar()

nnoremap <silent> n n:call<SID>displayBar()<CR>
nnoremap <silent> N N:call<SID>displayBar()<CR>
nnoremap <silent> * *:call<SID>displayBar()<CR>
nnoremap <silent> # #:call<SID>displayBar()<CR>
nnoremap <silent> g; g;:call<SID>displayBar()<CR>
nnoremap <silent> `` ``:call<SID>displayBar()<CR>
