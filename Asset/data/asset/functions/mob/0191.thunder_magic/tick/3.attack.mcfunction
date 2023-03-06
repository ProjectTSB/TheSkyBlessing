#> asset:mob/0191.thunder_magic/tick/3.attack
#
#
#
# @within function asset:mob/0191.thunder_magic/tick/2.tick

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 150
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 5
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 50

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2 0
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.7 0 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 36f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 自害
    kill @s