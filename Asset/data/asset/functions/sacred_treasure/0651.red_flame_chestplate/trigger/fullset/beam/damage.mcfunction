#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/beam/damage
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/beam/shoot

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6

# ダメージ設定
    # 与えるダメージ = 50
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/

# ノックバックを与える
    data modify storage lib: Argument.VectorMagnitude set value 0.8
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] at @s facing entity @p[tag=Landing] feet rotated ~180 -20 run function lib:motion/
# リセット
    data remove storage lib: Argument

# Motionで飛ばす都合上演出のAECが当たらないため、雑に対処をする。
    effect give @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] wither 1 1 true

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget