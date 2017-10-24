" Vim indent file
" Language: Volt
" Maintainer: Yoshihiro Tanaka <contact@cordea.jp>

if exists("b:did_indent")
    finish
endif
let b:did_indent=1

setlocal cindent
setlocal noexpandtab shiftwidth=0 softtabstop=0

let b:undo_indent = "setl cin< et< sw< sts<"
