#> asset:mob/1011.meteor/tick/3.landing
#
#
#
# @within function
#   asset:mob/1011.meteor/tick/2.tick
#   asset:mob/1011.meteor/tick/3.move

# パーティクル
    particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1 1
    particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.4 30

# サウンド
    playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s run function lib:damage/
# リセット
    function lib:damage/reset

say yo

# 終了
    kill @s