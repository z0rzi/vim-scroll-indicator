function! DisplayBar()


if !exists("g:scroll_str")
    let g:scroll_str = "███"
endif

function! DisplayBar()
    set nomore


    let perc = ( winwidth(0) -10 - len(g:scroll_str) ) * getpos('.')[1] / line('$')

    echohl None
    echon repeat(' ', perc)
    " echohl Search
    echon g:scroll_str
    " echohl None
    
endfunction


nnoremap <silent> n n:call DisplayBar()<CR>
nnoremap <silent> N N:call DisplayBar()<CR>
nnoremap <silent> * *:call DisplayBar()<CR>
nnoremap <silent> # #:call DisplayBar()<CR>
