#> asset_manager:artifact/triggers/attack/vanilla/
#
# 神器に関係しない通常攻撃のダメージ処理
#
# @within function asset_manager:artifact/triggers/attack/foreach

#> Private
# @within asset_manager:artifact/triggers/attack/vanilla/*
    #declare score_holder $Damage

#> Private
# @private
    #declare score_holder $Fluctuation

# Damage
    execute store result score $Damage Temporary run data get storage asset:context Attack.Amount -100
# 減算
    scoreboard players operation @s MobHealth += $Damage Temporary
# ダメージ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute unless score $Fluctuation Lib matches 0 run function lib:status_log/show_health
# 代入 / kill
    execute if score @s MobHealth matches ..0 run tag @s add Death
    execute if score @s MobHealth matches ..0 if entity @s[tag=!AssetMob] run tag @s add Kill
    execute if score @s MobHealth matches ..0 run function asset_manager:artifact/triggers/attack/vanilla/push_kill_and_death_event

# リセット
    scoreboard players reset $Damage Temporary
    tag @s remove ShouldVanillaAttack
