" Vim syntax file
" Language: Volt
" Maintainer: Yoshihiro Tanaka <contact@cordea.jp>

if exists("b:current_syntax")
    finish
endif

syn keyword voltImport import module
syn keyword voltModifier public private protected
syn keyword voltStructure class struct interface union
syn keyword voltStorageClass override extern
syn keyword voltStorageClass global local scope
syn keyword voltStorageClass const ref
syn keyword voltConstant const null
syn keyword voltConstant true false
syn keyword voltEnum enum
syn keyword voltTypedef alias
syn keyword voltOperator new cast this super
syn keyword voltType i8 i16 i32 i64
syn keyword voltType u8 u16 u32 u64
syn keyword voltType f32 f64
syn keyword voltType long
syn keyword voltType char wchar dchar
syn keyword voltType bool string
syn keyword voltType size_t
syn keyword voltType void
syn keyword voltStatement return continue break goto assert
syn keyword voltConditional if else switch
syn keyword voltLabel case default
syn keyword voltRepeat for foreach while
syn keyword voltFunction fn
syn keyword voltException try catch finally throw

syn region voltCommentLine start="//" end="$" contains=@Spell
syn region voltComment start="/\*" end="\*/" contains=voltComment,@Spell fold

syn region voltString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region voltString start="`" end="`" oneline

syn match voltChar "'\(.\|\\.\)'"
syn match voltNumber "0x\x\+\(_u\d\{0,2\}\)\?[UuLl]\{0,3\}"
syn match voltNumber "\<\d\+[UuLl]\{0,3\}\>"
syn match voltAnnotation "@[[:alnum:]]\+"

hi link voltImport Include
hi link voltModifier StorageClass
hi link voltEnum Structure
hi link voltTypedef Typedef
hi link voltStructure Structure
hi link voltStorageClass StorageClass
hi link voltConstant Constant
hi link voltOperator Operator
hi link voltImport Include
hi link voltType Type
hi link voltStatement Statement
hi link voltFunction Function
hi link voltConditional Conditional
hi link voltLabel Label
hi link voltComment Comment
hi link voltCommentLine Comment
hi link voltString String
hi link voltChar Character
hi link voltNumber Number
hi link voltRepeat Repeat
hi link voltAnnotation Identifier
hi link voltException Exception

let b:current_syntax = "volt"
