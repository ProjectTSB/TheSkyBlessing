#> asset:mob/1004.tultaria/tick/skill/lightning_stab/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

# 待機モーション停止
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/dash_stab_windup/play

# モデルをプレイヤーに向ける
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~0.5 ~ ~ 0

# 雷撃マーカー設置
    summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning1"]}

# 演出
    particle minecraft:dust 0.878 1 0.333 1.5 ~ ~1 ~ 0.5 0.8 0.5 0 50 force @a[distance=..30]
    particle minecraft:instant_effect ~ ~1 ~ 0.3 0.8 0.3 0 25 force @a[distance=..30]
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2