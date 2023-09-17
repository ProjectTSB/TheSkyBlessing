#> asset:mob/1004.tultaria/tick/skill/dash_slash/4.active
#
# 振り抜く
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# 待機モーション再生
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/dash_slash_active/play

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.2