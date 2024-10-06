#> mob_manager:entity_finder/attacking_entity/on_hurt
#
# 被攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacking_entity

# フィルタ
    function mob_manager:entity_finder/attacking_entity/filters/
# 戦闘中判定スコアをセットする
    scoreboard players set @s InBattleTick 160
# リセット
    advancement revoke @s only mob_manager:entity_finder/check_attacking_entity
