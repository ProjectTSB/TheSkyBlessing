#> asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0456.potion_of_stalling_power/3.main
#   asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect

# ここから先は神器側の効果の処理を書く

#　効果
    execute as @a[scores={78.Tick=1..}] run function asset:sacred_treasure/0456.potion_of_stalling_power/3.2.effect_player

# 再起
    execute if entity @a[scores={78.Tick=1..},limit=1] run schedule function asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect 1t