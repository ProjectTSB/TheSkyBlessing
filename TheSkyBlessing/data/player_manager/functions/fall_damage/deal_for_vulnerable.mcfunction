#> player_manager:fall_damage/deal_for_vulnerable
#
#
#
# @within function player_manager:fall_damage/

# 「無敵であるべき」ではない && 落下ダメージ無効化ではない && OldFallDistanceが0でない なら落下ダメージを与える
    execute if entity @s[tag=!PlayerShouldInvulnerable,tag=!FallDamageImmunity] unless score @s OldFallDistance matches 0 run function player_manager:fall_damage/deal_damage/
# タグはチェックに失敗しても消す
    tag @s remove Falling
