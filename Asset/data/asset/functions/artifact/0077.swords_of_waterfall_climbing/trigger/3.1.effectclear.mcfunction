#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear
#
# エフェクトを消す処理
#
# @within function
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/rejoin_process

# ここから先は神器側の効果の処理を書く

# OnGround取得
    execute as @a[tag=25.EffectClear] run function api:data_get/on_ground

# 落下量を検知
    execute as @a[tag=25.EffectClear] run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.3.falldistance

# 落下を与える
    execute if data storage api: {OnGround:0b} run effect give @a[tag=25.EffectClear] levitation 1 130 true
    execute if data storage api: {OnGround:0b} run effect give @a[tag=25.EffectClear] slow_falling 1 10 true

# 着地時の処理
    execute if data storage api: {OnGround:1b} run effect clear @a[tag=25.EffectClear] levitation
    execute as @a[tag=25.EffectClear] if data storage api: {OnGround:1b} run attribute @s minecraft:generic.knockback_resistance modifier remove 1-0-1-0-4d00000007
    # 着地時に周囲にダメージ与える
        execute as @a[tag=25.EffectClear,tag=25.Landing] if data storage api: {OnGround:1b} at @s run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.3.landing_attack
    execute if data storage api: {OnGround:1b} run tag @a[tag=25.EffectClear] remove 25.EffectClear

# 着地していない場合、次tickも実行
    execute if entity @a[tag=25.EffectClear,limit=1] run schedule function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear 1t replace