#> asset:mob/0105.potion_projectile/tick/poison/1.tick
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# スコア
    scoreboard players add @s 2X.InBlockTime 1

# 毒
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..3] poison 5 6 false

# 演出
    particle dust 0 0.4 0 1 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    particle dust 0.6 0 1 1 ~ ~1.2 ~ 1 0.4 1 0 4 normal @a
    playsound block.fire.extinguish hostile @a ~ ~ ~ 0.4 2 0

# 一定時間経過によるkill
    execute if score @s 2X.InBlockTime matches 60.. run kill @s