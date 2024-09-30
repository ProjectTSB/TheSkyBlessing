#> asset_manager:artifact/triggers/attack/vanilla
#
# 神器に関係しない通常攻撃のダメージ処理
#
# @within function asset_manager:artifact/triggers/attack/foreach

#> private
# @private
    #declare score_holder $Damage
    #declare score_holder $Fluctuation

# Damage
    execute store result score $Damage Temporary run data get storage asset:context Attack.Damage -100
# 減算
    scoreboard players operation @s MobHealth += $Damage Temporary
# ダメージ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute unless score $Fluctuation Lib matches 0 run function lib:status_log/show_health
# 代入 / kill
    execute if score @s MobHealth matches ..0 run tag @p[tag=this] add Killer
    execute if score @s MobHealth matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score @s MobHealth matches ..0 run effect clear @s resistance
    execute if score @s MobHealth matches ..0 if data storage asset:artifact Event{Type:"vanilla_projectile"} run tag @s add AttackedByProjectile
    execute if score @s MobHealth matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=Killer]
    tag @s remove AttackedByProjectile
    execute if score @s MobHealth matches ..0 run kill @s

# リセット
    scoreboard players reset $Damage Temporary
    tag @s remove ShouldVanillaAttack
