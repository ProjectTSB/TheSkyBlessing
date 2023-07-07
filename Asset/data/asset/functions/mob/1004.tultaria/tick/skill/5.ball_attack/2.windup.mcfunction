#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick

# ニュートラルポーズ停止
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/staff_1/play

# 演出
    particle dust 0.8 100000000 100000000 1.5 ~ ~1.2 ~ 0.3 0.7 0.3 1 50
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 2 1
