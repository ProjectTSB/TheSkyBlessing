#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0077.swords_of_waterfall_climbing/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃処理
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 10.f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
#ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=HurtEntity,distance=..10,sort=nearest,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10,sort=nearest,limit=1] run particle minecraft:rain ~ ~ ~ 0 2 0 1 100
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10,sort=nearest,limit=1] run particle minecraft:bubble_pop ~ ~ ~ 0.1 2 0.1 0 100
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0

#　地面にいる時の処理
    execute if entity @s[tag=OnGround] run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10,sort=nearest,limit=1] levitation 1 20
    effect give @s[tag=OnGround] levitation 1 20 true

# 空中にいる時の処理
    execute if entity @s[tag=!OnGround] run data merge entity @e[type=#lib:living,tag=HurtEntity,tag=!OnGround,distance=..10,sort=nearest,limit=1] {Motion:[0.0,-1.0,0.0]}

# 着地後にエフェクトを消すためタグを付与
    tag @s[tag=!OnGround] add Treasure77EffectClear

# 落下中攻撃食らうとぶっ飛ぶので対処
    attribute @s[tag=!OnGround] minecraft:generic.knockback_resistance base set 1

# 着地後にエフェクトを消す処理
    schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace