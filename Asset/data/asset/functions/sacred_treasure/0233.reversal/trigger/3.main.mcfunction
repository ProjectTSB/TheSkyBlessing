#> asset:sacred_treasure/0233.reversal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0233.reversal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# MP反転
    execute as @a store result score @s 6H.MP run function lib:mp/get
    execute as @a store result score @s 6H.SetMP run function lib:mp/get_max
    execute as @a run scoreboard players operation @s 6H.SetMP -= @s 6H.MP
    execute as @a run function asset:sacred_treasure/0233.reversal/trigger/set_mp

# 演出
    particle portal ~ ~ ~ 0 0 0 2 250 force @a
    playsound block.enchantment_table.use master @s ~ ~ ~ 1 0 1

# 後処理
    scoreboard players reset @a 6H.MP
    scoreboard players reset @a 6H.SetMP
