" include guard
if exists('g:vim_eval_loaded')
    finish
endif
let g:vim_eval_loaded=1

function! GetSelected()
    let tmp=@@
    silent normal gvy
    let selected=@@
    let @@=tmp
    return selected
endfunction

function! ExecSelected()
    let text=GetSelected()
    execute text
endfunction

" set keymap

noremap <Plug>(exec_selected) :<C-u>call ExecSelected()<CR>
vmap <silent> <Leader>e <Plug>(exec_selected) 

