#> asset_manager:mob/trigger_death
#
#
#
# @within function core:tick

# Contextの設定
    data modify storage asset:context id set from entity @s Item.tag.TSB.ID
# トリガーの呼び出し
    function #asset:mob/death
