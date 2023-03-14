#> asset:artifact/0233.reversal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0233.reversal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Val
# @private
    #declare score_holder $6H.MP
    #declare score_holder $6H.SetMP

# MP反転
    execute as @a run function asset:artifact/0233.reversal/trigger/set_mp

# 演出
    particle minecraft:dust 0.7 0.2 1 1 ~ ~1 ~ 0.2 0.5 0.2 0 50 force @a[distance=..30]
    particle minecraft:portal ~ ~1 ~ 0 0 0 2 100 force @a[distance=..30]
    playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2 0 1

# 後処理
    scoreboard players reset $6H.MP Temporary
    scoreboard players reset $6H.SetMP Temporary
