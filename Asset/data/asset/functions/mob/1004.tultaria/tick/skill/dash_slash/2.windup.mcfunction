#> asset:mob/1004.tultaria/tick/skill/dash_slash/2.windup
#
# 構え
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# 慣性切る
    tag @s add RW.DisableInertia

# 速度設定
    scoreboard players set @s RW.Speed 3

# 地面へ移動する
    execute at @s run function asset:mob/1004.tultaria/tick/move/teleport/move_to_ground/1.search_ground

# 浮く
    data modify entity @s NoAI set value 1b

# 待機モーション停止
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/dash_slash_windup/play

# 演出
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2