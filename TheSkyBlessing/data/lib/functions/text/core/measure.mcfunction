#> lib:text/core/measure
#
# @within function
#   lib:text/measure
#   lib:text/core/component/part

# 文字列を一度走査し、両設定の半ピクセル幅を合計する
    scoreboard players set $TextAdvance Temporary 0
    scoreboard players set $TextUniformAdvance Temporary 0
    data modify storage lib:text Work.Font set value "minecraft:uniform"
    execute if data storage lib:text Work.FixedFont run data modify storage lib:text Work.Font set from storage lib:text Work.FixedFont
    execute unless function lib:text/core/next run return fail

# 通常表示の送り幅を保存して整数へ切り上げる
    execute store result storage lib: Return.Default.TextAdvance double 0.5 run scoreboard players get $TextAdvance Temporary
    scoreboard players operation $TextWidth Temporary = $TextAdvance Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextAdvance Temporary %= $2 Const
    execute if score $TextAdvance Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Default.TextWidth int 1 run scoreboard players get $TextWidth Temporary

# Unicodeフォント強制時の送り幅を保存して整数へ切り上げる
    execute store result storage lib: Return.Unifont.TextAdvance double 0.5 run scoreboard players get $TextUniformAdvance Temporary
    scoreboard players operation $TextWidth Temporary = $TextUniformAdvance Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextUniformAdvance Temporary %= $2 Const
    execute if score $TextUniformAdvance Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Unifont.TextWidth int 1 run scoreboard players get $TextWidth Temporary
    return 1
