#> asset_manager:mob/triggers/death/
#
#
#
# @within function core:tick

# 殺したユーザーの特定
    data modify storage asset:mob UUID set value [I;0,0,0,0]
    data modify storage asset:mob UUID set from entity @s Item.tag.TSB.KillerUUID
    execute as @a run function asset_manager:mob/triggers/death/find_player
# Contextの設定
    data modify storage asset:context id set from entity @s Item.tag.TSB.ID
# トリガーの呼び出し
    function #asset:mob/death
# リセット
    data remove storage asset:mob id
    data remove storage asset:mob UUID
    tag @a[tag=Killer] remove Killer