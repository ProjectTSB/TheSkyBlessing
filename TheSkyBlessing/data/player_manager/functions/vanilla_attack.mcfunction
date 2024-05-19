#> player_manager:vanilla_attack
#
# 神器に関係しない通常攻撃のダメージ処理
#
# @within function core:handler/attack

#> private
# @private
    #declare score_holder $Damage

# 攻撃処理
    execute store result score $Damage Temporary run data get entity @s Health 100
    scoreboard players remove $Damage Temporary 51200
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute unless score $Fluctuation Lib matches 0 run function lib:status_log/show_health
    scoreboard players operation @s MobHealth += $Damage Temporary
    execute if score @s MobHealth matches ..0 run tag @p[tag=this] add Killer
    execute if score @s MobHealth matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score @s MobHealth matches ..0 run effect clear @s resistance
    execute if score @s MobHealth matches ..0 if entity @p[tag=this,advancements={asset_manager:artifact/attack/projectile=true}] run tag @s add AttackedByProjectile
    execute if score @s MobHealth matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=Killer]
    tag @s remove AttackedByProjectile
    execute if score @s MobHealth matches ..0 run kill @s
# 回復
    execute unless score @s MobHealth matches ..0 run data modify entity @s Health set value 512f

# リセット
    scoreboard players reset $Damage Temporary
