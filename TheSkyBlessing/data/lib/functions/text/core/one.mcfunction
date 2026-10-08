#> lib:text/core/one
#
# @within function
#   lib:text/core/measure

# 指定フォントの送り幅を合計する
    scoreboard players set $TextAdvance Temporary 0
    execute unless function lib:text/core/next run return fail
    execute store result storage lib:text Work.Result.TextAdvance double 0.5 run scoreboard players get $TextAdvance Temporary

# 半ピクセル単位の幅を整数へ切り上げる
    scoreboard players operation $TextWidth Temporary = $TextAdvance Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextAdvance Temporary %= $2 Const
    execute if score $TextAdvance Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib:text Work.Result.TextWidth int 1 run scoreboard players get $TextWidth Temporary
    return 1
