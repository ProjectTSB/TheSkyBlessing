#> lib:text/core/component/measure
# @within function lib:text/measure_component

# 各部分の半ピクセル幅を合計し、全体で一度だけ切り上げる
    scoreboard players set $TextDefaultTotal Temporary 0
    scoreboard players set $TextUniformTotal Temporary 0
    execute if data storage lib:text Component.Parts[0] unless function lib:text/core/component/part run return fail
    execute store result storage lib: Return.Default.TextAdvance double 0.5 run scoreboard players get $TextDefaultTotal Temporary
    scoreboard players operation $TextWidth Temporary = $TextDefaultTotal Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextDefaultTotal Temporary %= $2 Const
    execute if score $TextDefaultTotal Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Default.TextWidth int 1 run scoreboard players get $TextWidth Temporary
    execute store result storage lib: Return.Unifont.TextAdvance double 0.5 run scoreboard players get $TextUniformTotal Temporary
    scoreboard players operation $TextWidth Temporary = $TextUniformTotal Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextUniformTotal Temporary %= $2 Const
    execute if score $TextUniformTotal Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Unifont.TextWidth int 1 run scoreboard players get $TextWidth Temporary
    return 1
