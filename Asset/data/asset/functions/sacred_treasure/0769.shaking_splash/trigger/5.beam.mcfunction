#> asset:sacred_treasure/0769.shaking_splash/trigger/5.beam
#
# スニーク時にビームを発射する処理
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/3.main

# 演出
    playsound block.bubble_column.upwards_ambient player @a[distance=..20] ~ ~ ~ 1 1.6 0
    playsound block.bubble_column.upwards_ambient player @a[distance=..20] ~ ~ ~ 1 1.3 0
    playsound block.bubble_column.upwards_ambient player @a[distance=..20] ~ ~ ~ 1 1.0 0
    playsound block.bubble_column.bubble_pop player @a[distance=..20] ~ ~ ~ 1 0 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.1 1.8 0
    particle firework ~ ~0.6 ~ 0.3 0.3 0.3 0.25 20


# 発射
    execute positioned ~ ~0.6 ~ positioned ^ ^ ^0.5 run function asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive

# ダメージ
    data modify storage lib: Argument.Damage set value 400.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=LandingTarget,distance=..15] run function lib:damage/
# リセット
    function lib:damage/reset

# Tag消し
    tag @e[type=#lib:living,tag=LandingTarget,distance=..15] remove LandingTarget