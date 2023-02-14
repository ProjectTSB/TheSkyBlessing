#> asset:sacred_treasure/1021.call_brave_knight/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1021.call_brave_knight/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# 召喚
    data modify storage api: Argument.ID set value 307
    execute rotated ~ 0 positioned ^-2 ^ ^-2 run function api:mob/summon

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1 2