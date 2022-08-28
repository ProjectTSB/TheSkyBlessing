#> asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
#
# tpさせる
#
# @within function asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle

# 演出
    playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 1.4
    execute positioned ^ ^ ^-1.5 run particle minecraft:poof ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force

    execute positioned ^ ^ ^1.5 run function asset:mob/0175.queen_bee/tick/move/teleport