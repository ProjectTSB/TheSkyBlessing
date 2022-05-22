#> asset:sacred_treasure/0172.icicle/trigger/laser/damage
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser

# ここから先は神器側の効果の処理を書く

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 200.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,distance=..4] run function lib:damage/
# リセット
    data remove storage lib: Argument
# 演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0

# 吸引
# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 0.4
    execute as @e[type=#lib:living,tag=Enemy,distance=..8] at @s facing entity @e[type=area_effect_cloud,tag=4S.Laser,sort=nearest,limit=1] eyes rotated ~ 0 run function lib:motion/
# リセット
    data remove storage lib: Argument
