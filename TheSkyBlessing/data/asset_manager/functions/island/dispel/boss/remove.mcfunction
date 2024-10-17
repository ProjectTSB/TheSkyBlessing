#> asset_manager:island/dispel/boss/remove
#
#
#
# @within function asset_manager:island/dispel/boss/watcher

# タグ外す
    tag @e[type=armor_stand,tag=this,distance=..100,limit=1] remove CantDispel
    scoreboard players reset @e[type=armor_stand,tag=this,distance=..100,limit=1] TargetBossID
# context作成
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
# 削除処理
    function asset_manager:mob/triggers/remove/ with storage asset:context
# Deathトリガー防止
    data modify entity @s DeathLootTable set value "empty"
# さよなら～
    tp @s ~ -300 ~
    kill @s
