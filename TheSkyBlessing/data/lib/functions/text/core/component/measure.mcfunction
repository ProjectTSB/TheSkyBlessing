#> lib:text/core/component/measure
# @within function lib:text/measure_component

# 各部分を計測し、両設定の送り幅を半px単位で合計する
# 部分ごとの切り上げによる誤差を避けるため、整数幅ではなく送り幅を足す
    scoreboard players set $TextDefaultTotal Temporary 0
    scoreboard players set $TextUniformTotal Temporary 0
    execute if data storage lib:text Component.Parts[0] unless function lib:text/core/component/part run return fail

# 通常表示の送り幅を保存し、合計を整数へ切り上げる
# 以下の合計値は剰余演算前の値で、半px単位
# Return.Default.TextAdvance = $TextDefaultTotal / 2
# $TextWidth = floor($TextDefaultTotal / 2) + ($TextDefaultTotal mod 2) = ceil($TextDefaultTotal / 2)
    execute store result storage lib: Return.Default.TextAdvance double 0.5 run scoreboard players get $TextDefaultTotal Temporary
    scoreboard players operation $TextWidth Temporary = $TextDefaultTotal Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextDefaultTotal Temporary %= $2 Const
    execute if score $TextDefaultTotal Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Default.TextWidth int 1 run scoreboard players get $TextWidth Temporary

# Unicodeフォント強制時の送り幅を保存し、合計を整数へ切り上げる
# 以下の合計値は剰余演算前の値で、半px単位
# Return.Unifont.TextAdvance = $TextUniformTotal / 2
# $TextWidth = floor($TextUniformTotal / 2) + ($TextUniformTotal mod 2) = ceil($TextUniformTotal / 2)
    execute store result storage lib: Return.Unifont.TextAdvance double 0.5 run scoreboard players get $TextUniformTotal Temporary
    scoreboard players operation $TextWidth Temporary = $TextUniformTotal Temporary
    scoreboard players operation $TextWidth Temporary /= $2 Const
    scoreboard players operation $TextUniformTotal Temporary %= $2 Const
    execute if score $TextUniformTotal Temporary matches 1 run scoreboard players add $TextWidth Temporary 1
    execute store result storage lib: Return.Unifont.TextWidth int 1 run scoreboard players get $TextWidth Temporary
    return 1
