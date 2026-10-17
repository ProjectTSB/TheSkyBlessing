#> lib:text/core/pair
#
# @within function
#   lib:text/core/next

# 先頭2コード単位を幅表のキーとして再検索する
    execute store result score $TextLength Temporary run data get storage lib:text Work.Text
    execute if score $TextLength Temporary matches ..1 run return fail
    data modify storage lib:text Work.Char set string storage lib:text Work.Text 1 2
    data modify storage lib:text Work.Escaped set from storage lib:text Work.Char
    execute if data storage lib:text Work{Char:'"'} run data modify storage lib:text Work.Escaped set value '\\"'
    execute if data storage lib:text Work{Char:'\\'} run data modify storage lib:text Work.Escaped set value '\\\\'
    data modify storage lib:text Work.Tail set from storage lib:text Work.Escaped
    function lib:text/core/pair_key.m with storage lib:text Work
    function lib:text/core/glyph.m with storage lib:text Work
