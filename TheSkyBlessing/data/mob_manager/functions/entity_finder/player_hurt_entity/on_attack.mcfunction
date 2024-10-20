#> mob_manager:entity_finder/player_hurt_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_player_hurt_entity

# フィルター
    execute if entity @s[tag=!AttackedByApi] run function mob_manager:entity_finder/player_hurt_entity/filters/
# 戦闘中判定スコアをセットする
    scoreboard players set @s InBattleTick 160
# リセット
    advancement revoke @s only mob_manager:entity_finder/check_player_hurt_entity
