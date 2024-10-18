#> asset_manager:island/dispel/boss/remove
#
#
#
# @within function asset_manager:island/dispel/boss/watcher

# タグ外す
    tag @e[type=armor_stand,tag=this,distance=..100,limit=1] remove CantDispel
    scoreboard players reset @e[type=armor_stand,tag=this,distance=..100,limit=1] TargetBossID
# 削除用タグ付与
    tag @s add RemovingEntity
