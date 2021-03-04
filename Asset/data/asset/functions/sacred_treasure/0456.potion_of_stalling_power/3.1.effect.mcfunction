#> asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0456.potion_of_stalling_power/3.main
#   asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect

# ここから先は神器側の効果の処理を書く

#　効果
    effect give @a[scores={78.Tick=2400}] speed 20 9
    effect give @a[scores={78.Tick=2000}] speed 20 5
    effect give @a[scores={78.Tick=1800}] speed 20 2
    effect give @a[scores={78.Tick=1400}] speed 20 0
    effect give @a[scores={78.Tick=1000}] slowness 20 1
    effect give @a[scores={78.Tick=600}] slowness 30 10
    effect give @a[scores={78.Tick=400}] blindness 20 1

# スコア減らす
    scoreboard players remove @a[scores={78.Tick=1..}] 78.Tick 1

# スコアリセット
    scoreboard players reset @a[scores={78.Tick=0}] 78.Tick

# 死んだ場合消す
    scoreboard players reset @a[tag=Death,scores={78.Tick=1..}] 78.Tick

# 再起
    execute if entity @a[scores={78.Tick=1..},limit=1] run schedule function asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect 1t