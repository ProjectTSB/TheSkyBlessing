#> asset:mob/1004.tultaria/tick/skill/2.meteor_attack/2.windup
#
# 杖を構える
#
# @within function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/staff_swing_1/play

# 演出
    particle minecraft:soul_fire_flame ~ ~1.2 ~ 0.3 0.7 0.3 0.01 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2