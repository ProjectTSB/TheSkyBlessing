#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear
#
# エフェクトを消す処理
#
# @within function
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear

# ここから先は神器側の効果の処理を書く

# 落下を与える
    effect give @a[tag=Treasure77EffectClear,tag=!OnGround] levitation 1 130 true
    effect give @a[tag=Treasure77EffectClear,tag=!OnGround] slow_falling 1 10 true

# 着地時の処理
    effect clear @a[tag=Treasure77EffectClear,tag=OnGround] levitation
    execute as @a[tag=Treasure77EffectClear,tag=OnGround] run attribute @s minecraft:generic.knockback_resistance modifier remove 1-0-1-0-4d00000007
    tag @a[tag=Treasure77EffectClear,tag=OnGround] remove Treasure77EffectClear

# 着地していない場合、次tickも実行
    execute if entity @a[tag=Treasure77EffectClear,limit=1] run schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace
