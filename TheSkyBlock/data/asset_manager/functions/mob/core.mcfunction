#> asset_manager:mob/core
#
#
#
# @within function core:tick

# thisタグ
    tag @s add this
# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    data modify storage asset:context Health set from entity @s Health
# トリガーの呼び出し
    function #asset:mob/tick
    execute if entity @s[tag=AttackingEntity] run function #asset:mob/attack
    execute if entity @s[tag=AttackedEntity] run function #asset:mob/hurt
# リセット
    tag @s remove this