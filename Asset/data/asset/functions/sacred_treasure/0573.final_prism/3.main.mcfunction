#> asset:sacred_treasure/0573.final_prism/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0573.final_prism/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# スコアを戻す
    #scoreboard players reset @s[scores={573.Laser=4..}] 573.Laser
    #scoreboard players add @s 573.Laser 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# ここから先は神器側の効果の処理を書く
    data modify storage lib: Argument.Distance set value 10.0f
    execute unless score @s 573.Spread matches -2147483648..2147483647 run scoreboard players set @s 573.Spread 45
    execute unless score @s 573.Spread matches ..1 run scoreboard players remove @s 573.Spread 1
    execute store result storage lib: Argument.Spread float 0.1 run scoreboard players get @s 573.Spread
    execute anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle

# 非収束ビーム
    execute if score @s 573.Spread matches 2.. anchored eyes positioned ^-0.35 ^-0.25 ^ facing entity 0-0-0-0-0 feet run function asset:sacred_treasure/0573.final_prism/laser

# 完全収束ビーム
    execute if score @s 573.Spread matches ..1 anchored eyes positioned ^-0.35 ^-0.25 ^ facing entity 0-0-0-0-0 feet run function asset:sacred_treasure/0573.final_prism/final_laser

# リセット
    scoreboard players reset $Random Temporary