#> asset:mob/1011.meteor/tick/3.landing
#
#
#
# @within function asset:mob/1011.meteor/tick/2.tick

# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 30
    particle minecraft:lava ~ ~ ~ 3 1 3 0.42 13

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 終了
    kill @s