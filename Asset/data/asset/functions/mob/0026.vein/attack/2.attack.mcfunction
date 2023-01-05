#> asset:mob/0026.vein/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0026.vein/attack/1.trigger

# 弱化を付与
    execute at @p[tag=Victim] run effect give @a[tag=!PlayerShouldInvulnerable,distance=..2.5] weakness 4 2 true

# 演出
    playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1.7 0
    execute at @p[tag=Victim] run particle dust 0.149 0.682 0.741 1 ~ ~ ~ 0.6 0.6 0.6 0 20 normal @a