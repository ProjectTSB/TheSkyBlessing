#> asset_manager:artifact/triggers/vanilla/damage
#
# バニラ攻撃を処理する
#
# @within function asset_manager:artifact/triggers/vanilla/

#> Private
# @private
    #declare score_holder $Fluctuation

# 減算
    scoreboard players operation @s MobHealth += $Damage Temporary
# ダメージ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    execute unless score $Fluctuation Lib matches 0 run function lib:status_log/show_health
# 代入 / kill
    execute if score @s MobHealth matches ..0 run tag @s add Death
    execute if score @s MobHealth matches ..0 run function asset_manager:artifact/triggers/vanilla/push_kill_and_death_event
