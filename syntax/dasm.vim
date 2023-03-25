" Vim syntax file
" Language:     dasm
" Maintainer:   James McDonald <james@jamesmcdonald.com>
" Last Change:  2023 Mar 25
" Remark:       Dillon's dasm assembler, 6502 processor

syntax case ignore

syn region dasmComment start=/;/ end=/$/
syn region dasmComment start="/\*" end="\*/"
syn keyword dasmDir incdir include dc ds byte processor org
syn keyword dasmOp ADC AND ASL BCC BCS BEQ BIT BMI BNE BPL BRK BVC BVS CLC
syn keyword dasmOp CLD CLI CLV CMP CPX CPY DEC DEX DEY EOR INC INX INY JMP
syn keyword dasmOp JSR LDA LDX LDY LSR NOP ORA PHA PHP PLA PLP ROL ROR RTI
syn keyword dasmOp RTS SBC SEC SED SEI STA STX STY TAX TAY TSX TXA TXS TYA
syn match dasmLabel /^[_a-zA-Z][^ ]*/
syn match dasmDecimal /[^$][0-9]\+/
syn match dasmHex /\$[0-9a-f]\+/
syn region dasmString start=/"/ skip=/\\"/ end=/"/
syn match dasmHash /#/
syn match dasmOper /[-+=,*]/

highlight link dasmDir Macro
highlight link dasmOp Keyword
highlight link dasmComment Comment
highlight link dasmLabel Function
highlight link dasmDecimal Constant
highlight link dasmHex Constant
highlight link dasmString String
highlight link dasmHash Special
highlight link dasmOper Operator
