#> mob_manager:entity_finder/entity_hurt_player/on_hurt
#
# 被攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_entity_hurt_player

# フィルタ
    function mob_manager:entity_finder/entity_hurt_player/filters/
# 戦闘中判定スコアをセットする
    scoreboard players set @s InBattleTick 160
# リセット
    advancement revoke @s only mob_manager:entity_finder/check_entity_hurt_player
