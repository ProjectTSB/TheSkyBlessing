#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear
#
# エフェクトを消す処理
#
# @within function
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear

# ここから先は神器側の効果の処理を書く


# 落下を与える
    effect give @a[tag=Treasure77EffectClear,nbt={OnGround:0b}] levitation 1 130 true
    effect give @a[tag=Treasure77EffectClear,nbt={OnGround:0b}] slow_falling 1 10 true

# 落下中攻撃食らうとぶっ飛ぶので対処
    execute as @a[tag=Treasure77EffectClear,nbt={OnGround:0b}] run attribute @s minecraft:generic.knockback_resistance base set 1

# 着地時の処理
    effect clear @a[tag=Treasure77EffectClear,nbt={OnGround:1b}] levitation
    execute as @a[tag=Treasure77EffectClear,nbt={OnGround:1b}] run attribute @s minecraft:generic.knockback_resistance base set 0
    tag @a[tag=Treasure77EffectClear,nbt={OnGround:1b}] remove Treasure77EffectClear

# 死亡時もタグを消す
    tag @a[tag=Treasure77EffectClear,predicate=lib:is_death] remove Treasure77EffectClear

# 着地していない場合、次tickも実行
    execute if entity @a[tag=Treasure77EffectClear] run schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace
