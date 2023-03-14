#> asset:artifact/0456.potion_of_stalling_power/trigger/3.2.effect_player
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0456.potion_of_stalling_power/trigger/3.1.effect

# ここから先は神器側の効果の処理を書く

# 効果
    effect give @s[scores={CO.Tick=2400}] speed 20 9
    effect give @s[scores={CO.Tick=2000}] speed 20 5
    effect give @s[scores={CO.Tick=1800}] speed 20 2
    effect give @s[scores={CO.Tick=1400}] speed 20 0
    effect give @s[scores={CO.Tick=1000}] slowness 20 1
    effect give @s[scores={CO.Tick=600}] slowness 30 10
    effect give @s[scores={CO.Tick=400}] blindness 20 1

# スコア減らす
    scoreboard players remove @s[scores={CO.Tick=1..}] CO.Tick 1

# スコアリセット
    scoreboard players reset @s[scores={CO.Tick=0}] CO.Tick

# 死んだ場合消す
    scoreboard players reset @s[tag=Death,scores={CO.Tick=1..}] CO.Tick