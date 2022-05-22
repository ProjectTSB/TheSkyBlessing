#> asset:sacred_treasure/0172.icicle/trigger/laser/damage
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser

# ここから先は神器側の効果の処理を書く

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 100.0f
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