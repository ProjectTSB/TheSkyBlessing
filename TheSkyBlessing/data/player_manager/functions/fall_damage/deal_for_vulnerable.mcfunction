#> player_manager:fall_damage/deal_for_vulnerable
#
#
#
# @within function player_manager:fall_damage/

# 「無敵であるべき」ではない && 落下ダメージ無効化ではない && 水に触れていない なら落下ダメージを与える
    execute if entity @s[tag=!PlayerShouldInvulnerable,tag=!FallDamageImmunity] at @s positioned ~0.3 ~0.0 ~0.3 unless predicate lib:in_water/include_flowing positioned ~0.3 ~0.0 ~-.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~0.0 ~0.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~0.0 ~-.3 unless predicate lib:in_water/include_flowing positioned ~0.3 ~0.9 ~0.3 unless predicate lib:in_water/include_flowing positioned ~0.3 ~0.9 ~-.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~0.9 ~0.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~0.9 ~-.3 unless predicate lib:in_water/include_flowing positioned ~0.3 ~1.8 ~0.3 unless predicate lib:in_water/include_flowing positioned ~0.3 ~1.8 ~-.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~1.8 ~0.3 unless predicate lib:in_water/include_flowing positioned ~-.3 ~1.8 ~-.3 unless predicate lib:in_water/include_flowing run function player_manager:fall_damage/deal_damage/
# タグはチェックに失敗しても消す
    tag @s remove Falling
