#> asset:mob/0046.clock_of_despair/tick/skill/12_oclock/12_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 大爆発
# 演出
    particle minecraft:explosion ~ ~ ~ 2 2 2 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 4 4 4 0.42 400

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
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 自害
    kill @s