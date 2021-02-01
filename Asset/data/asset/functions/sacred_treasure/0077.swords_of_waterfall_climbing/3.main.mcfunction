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
    # パーティクルを無効化するか否か
        data modify storage lib: Argument.DisableParticle set value false
    # 防御力/防具強度を無視するか否か
        data modify storage lib: Argument.BypassArmor set value false
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value false
# 範囲5m以内のゾンビを対象に
    execute at @s as @e[type=#lib:living,tag=HurtEntity,distance=..10,limit=1,sort=nearest] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    execute as @s at @e[type=#lib:living,tag=HurtEntity,distance=..10,limit=1,sort=nearest] run particle minecraft:rain ~ ~ ~ 0 2 0 1 100
    execute as @s at @e[type=#lib:living,tag=HurtEntity,distance=..10,limit=1,sort=nearest] run particle minecraft:bubble_pop ~ ~ ~ 0.1 2 0.1 0 100
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0

#　地面にいる時の処理
    execute if entity @s[nbt={OnGround:1b}] run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10,nbt={OnGround:1b},limit=1,sort=nearest] levitation 1 20
    effect give @s[nbt={OnGround:1b}] levitation 1 20 true

# 空中にいる時の処理
    execute if entity @s[nbt={OnGround:0b}] run data merge entity @e[type=#lib:living,tag=HurtEntity,distance=..10,nbt={OnGround:0b},limit=1,sort=nearest] {Motion:[0.0,-1.0,0.0]}

# 着地後にエフェクトを消すためタグを付与
    tag @s[nbt={OnGround:0b}] add Treasure77EffectClear

# 着地後にエフェクトを消す処理
    schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace