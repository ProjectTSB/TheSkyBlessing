#> asset_manager:mob/triggers/death/manual
#
#
#
# @within function lib:damage/core/non-player-process

# Contextの設定
    execute store result storage asset:mob id int 1 run scoreboard players get @s MobID
    kill @s
# トリガーの呼び出し
    function #asset:mob/death
# リセット
    data remove storage asset:mob id
    data remove storage asset:mob UUID
    tag @a[tag=Killer] remove Killer