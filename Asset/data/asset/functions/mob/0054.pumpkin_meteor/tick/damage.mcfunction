#> asset:mob/0054.pumpkin_meteor/tick/damage
#
#
#
# @within function asset:mob/0054.pumpkin_meteor/tick/2.tick

# 演出
    particle explosion ~ ~1.5 ~ 0 0 0 0 1 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1 0

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s