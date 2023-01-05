#> asset:mob/0092.red_rose/tick/2.1.skill
#
#
#
# @within function asset:mob/0092.red_rose/tick/2.tick

# 演出
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 1 1 1 0.42 100

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 18.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# プレイヤーの方向へ前進
 tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]