#> lib:score_to_health_wrapper/core/show_death_message
#
#
#
# @within function lib:score_to_health_wrapper/core/die

#> ThisTag
# @private
#declare tag FromPlayer

# 攻撃者にタグを付与する
    tag @s add FromPlayer
    execute as @e[type=!player,distance=..150] if score @s MobUUID = @a[tag=FromPlayer,limit=1] LatestAttackMob run tag @s add LatestAttacker
    tag @s remove FromPlayer
# Enumをもとにメッセージを表示
    execute if score @s LatestAttackType matches 0 run function lib:message/common/die/water
    execute if score @s LatestAttackType matches 1 run function lib:message/common/die/fire
    execute if score @s LatestAttackType matches 2 run function lib:message/common/die/water
    execute if score @s LatestAttackType matches 3 run function lib:message/common/die/thunder
    execute if score @s LatestAttackType matches 4 run function lib:message/common/die/physical
    execute if score @s LatestAttackType matches 5 run function lib:message/common/die/magic
# リセット
    tag @e[type=!player,tag=LatestAttacker,distance=..150] remove LatestAttacker
    scoreboard players reset @s LatestAttackMob
    scoreboard players reset @s LatestAttackType