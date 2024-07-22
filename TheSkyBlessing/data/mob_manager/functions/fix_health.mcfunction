#> mob_manager:environmental_damage
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
    scoreboard players operation @s MobHealth += $Damage Temporary
    scoreboard players operation @s MobHealth < @s MobHealthMax

# ログ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute at @s run function lib:status_log/show_health

# キル処理
    execute if score @s MobHealth matches ..0 run kill @s
# 回復
    execute unless score @s MobHealth matches ..0 run attribute @s generic.max_health base set 1024
    execute unless score @s MobHealth matches ..0 run data modify entity @s Health set value 512f

# リセット
    scoreboard players reset $Damage Temporary
