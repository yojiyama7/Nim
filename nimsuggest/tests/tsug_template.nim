template tmpa() = discard
macro tmpb() = discard
converter tmpc() = discard
tmp#[!]#

discard """
$nimsuggest --tester $file
>sug $1
sug;;skMacro;;tsug_template.tmpb;;macro (){.noSideEffect, gcsafe.};;$file;;2;;6;;"";;100;;Prefix
sug;;skConverter;;tsug_template.tmpc;;converter ();;$file;;3;;10;;"";;100;;Prefix
sug;;skTemplate;;tsug_template.tmpa;;template ();;$file;;1;;9;;"";;100;;Prefix
"""
