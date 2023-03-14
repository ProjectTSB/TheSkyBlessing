#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0077.swords_of_waterfall_climbing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# OnGround取得
    function api:data_get/on_ground

# 攻撃当てた処理
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.2.attack

# 地面にいる時の処理
    execute if data storage api: {OnGround:1b} run effect give @e[tag=25.Hit,distance=..10,sort=nearest,limit=1] levitation 1 10
    execute if data storage api: {OnGround:1b} run effect give @s levitation 1 10 true

# 空中にいる時の処理
    execute if data storage api: {OnGround:0b} run data merge entity @e[tag=25.Hit,nbt={OnGround:0b},distance=..10,sort=nearest,limit=1] {Motion:[0.0,-3.5,0.0]}

# 着地後にエフェクトを消すためタグを付与
    execute if data storage api: {OnGround:0b} run tag @s add 25.EffectClear

# 落下中攻撃食らうとぶっ飛ぶので対処
    execute if data storage api: {OnGround:0b} run attribute @s minecraft:generic.knockback_resistance modifier add 1-0-1-0-4d00000007 "77waterfall" 1024 add

# タグ消去
    tag @e[tag=25.Hit] remove 25.Hit

# 着地後にエフェクトを消す処理
    schedule function asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear 1t replace