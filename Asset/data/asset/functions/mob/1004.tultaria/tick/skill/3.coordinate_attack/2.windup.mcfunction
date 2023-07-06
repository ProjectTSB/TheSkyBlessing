#> asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/staff_swing_2/play

# 演出
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 2 2