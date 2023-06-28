#> asset:mob/0314.blazing_bomb/tick/event/fireball/explosion
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/event/fireball/


# パーティクル
    #particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force @a[distance=..60]
    particle minecraft:explosion ~ ~ ~ 3 3 3 0 35 force @a[distance=..60]
    particle flame ~ ~ ~ 0.5 5 0.5 0.01 100

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1.5 0.5

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 35.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/

# リセット
    function lib:damage/reset

# Tickをリセットし、残存モードに移行
    tag @s add 8Q.AOE
    scoreboard players reset @s 8Q.Tick
