#> lib:text/core/next
#
# @within function
#   lib:text/core/next
#   lib:text/core/one

# 先頭文字の幅を取得し、未取得なら補助文字として調べる
    execute if data storage lib:text Work{Text:""} run return 1
    data modify storage lib:text Work.Char set string storage lib:text Work.Text 0 1
    data modify storage lib:text Work.Escaped set from storage lib:text Work.Char
    execute if data storage lib:text Work{Char:'"'} run data modify storage lib:text Work.Escaped set value '\\"'
    execute if data storage lib:text Work{Char:'\\'} run data modify storage lib:text Work.Escaped set value '\\\\'
    data modify storage lib:text Work.Key set from storage lib:text Work.Escaped
    data remove storage lib:text Work.Glyph
    function lib:text/core/glyph.m with storage lib:text Work
    execute unless data storage lib:text Work.Glyph run function lib:text/core/pair
    execute unless data storage lib:text Work.Glyph run return fail

# 幅と太字加算を復号し、合計のオーバーフローを確認する
    execute store result score $TextEncoded Temporary run data get storage lib:text Work.Glyph
    scoreboard players operation $TextGlyph Temporary = $TextEncoded Temporary
    scoreboard players operation $TextGlyph Temporary /= $8 Const
    scoreboard players operation $TextBold Temporary = $TextEncoded Temporary
    scoreboard players operation $TextBold Temporary /= $2 Const
    scoreboard players operation $TextBold Temporary %= $4 Const
    execute if data storage lib:text Work{Bold:true} run scoreboard players operation $TextGlyph Temporary += $TextBold Temporary
    scoreboard players operation $TextOld Temporary = $TextAdvance Temporary
    scoreboard players operation $TextAdvance Temporary += $TextGlyph Temporary
    execute if score $TextGlyph Temporary matches 0.. if score $TextAdvance Temporary < $TextOld Temporary run return fail
    execute if score $TextGlyph Temporary matches ..-1 if score $TextAdvance Temporary > $TextOld Temporary run return fail

# 処理した UTF-16 コード単位を取り除いて次の文字へ進む
    scoreboard players operation $TextEncoded Temporary %= $2 Const
    scoreboard players add $TextEncoded Temporary 1
    execute store result storage lib:text Work.Units int 1 run scoreboard players get $TextEncoded Temporary
    execute if data storage lib:text Work{Units:1} run data modify storage lib:text Work.Text set string storage lib:text Work.Text 1
    execute if data storage lib:text Work{Units:2} run data modify storage lib:text Work.Text set string storage lib:text Work.Text 2
    return run function lib:text/core/next
