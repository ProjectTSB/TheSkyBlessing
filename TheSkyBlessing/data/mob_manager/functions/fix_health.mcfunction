#> mob_manager:fix_health
#
# 緩衝体力が減っていた場合の処理
#
# @within function core:tick/

#> val
# @private
    #declare score_holder $Damage

# 体力の減少分だけダメージを与える
    execute store result score $Damage Temporary run data get entity @s Health 100
    scoreboard players remove $Damage Temporary 51200
    execute unless predicate api:mob/has_forward_target run scoreboard players operation @s MobHealth += $Damage Temporary
    execute unless predicate api:mob/has_forward_target run scoreboard players operation @s MobHealth < @s MobHealthMax

# ログ表示
    execute if entity @s[tag=!ExtendedCollision] run scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute if entity @s[tag=!ExtendedCollision] at @s anchored eyes positioned ^ ^ ^ run function lib:status_log/show_health

# 回復
    attribute @s generic.max_health base set 1024
    data modify entity @s Health set value 512f

# キル処理
    execute unless predicate api:mob/has_forward_target if score @s MobHealth matches ..0 run function api:mob/kill

# リセット
    scoreboard players reset $Damage Temporary
