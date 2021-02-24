#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0077.swords_of_waterfall_climbing/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃当てた処理
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.2.attack

#　地面にいる時の処理
    execute if entity @s[tag=OnGround] run effect give @e[tag=Hit,distance=..10,sort=nearest,limit=1] levitation 1 20
    effect give @s[tag=OnGround] levitation 1 20 true

# 空中にいる時の処理
    execute if entity @s[tag=!OnGround] run data merge entity @e[tag=Hit,tag=!OnGround,distance=..10,sort=nearest,limit=1] {Motion:[0.0,-1.0,0.0]}

# 着地後にエフェクトを消すためタグを付与
    tag @s[tag=!OnGround] add Treasure77EffectClear

# 落下中攻撃食らうとぶっ飛ぶので対処
    attribute @s[tag=!OnGround] minecraft:generic.knockback_resistance modifier add 1-1-77-1-1 "waterfall" 2147483647 add

# タグ消去
    tag @e[tag=Hit] remove Hit

# 着地後にエフェクトを消す処理
    schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace