#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear
#
# エフェクトを消す処理
#
# @within function
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear

# ここから先は神器側の効果の処理を書く

# OnGround取得
    function api:data_get/on_ground

# 落下量を検知
    tag @a[tag=1d.EffectClear,scores={FallDistance=150..}] add 1d.Landing

# 落下を与える
    execute if data storage api: {OnGround:0b} run effect give @a[tag=1d.EffectClear] levitation 1 130 true
    execute if data storage api: {OnGround:0b} run effect give @a[tag=1d.EffectClear] slow_falling 1 10 true

# 着地時の処理
    execute if data storage api: {OnGround:1b} run effect clear @a[tag=1d.EffectClear] levitation
    execute as @a[tag=1d.EffectClear] if data storage api: {OnGround:1b} run attribute @s minecraft:generic.knockback_resistance modifier remove 1-0-1-0-4d00000007
    # 着地時に周囲にダメージ与える
        execute as @a[tag=1d.EffectClear,tag=1d.Landing] if data storage api: {OnGround:1b} at @s run function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.3.landing_attack

    execute if data storage api: {OnGround:1b} run tag @a[tag=1d.EffectClear] remove 1d.EffectClear


# 着地していない場合、次tickも実行
    execute if entity @a[tag=1d.EffectClear,limit=1] run schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace
