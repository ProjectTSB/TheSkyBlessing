#> asset:mob/1016.divine_sword_red/tick/7.tick_landed
#
#
#
# @within function asset:mob/1016.divine_sword_red/tick/2.tick

# 演出
    particle dust 0.663 0.141 0.141 1 ~ ~0.8 ~ 0.1 0.1 0.1 0 2
    particle crit ~ ~0.8 ~ 0.2 0.2 0.2 0 1

# パーティクル
    execute positioned ~ ~0.8 ~ run function asset:mob/1016.divine_sword_red/tick/8.particle

# 一定間隔でダメージ
    scoreboard players operation $Interval Temporary %= $11 Const
    execute positioned ~ ~0.8 ~ if score $Interval Temporary matches 0 rotated 0 0 if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] run function asset:mob/1016.divine_sword_red/tick/9.damage