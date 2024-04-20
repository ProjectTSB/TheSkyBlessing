#> player_manager:manage_tag/_index.d
# @private

#> 無敵であることが推奨されるプレイヤー
# @public
#declare tag PlayerShouldInvulnerable

#> 敵の近くにいるプレイヤー
# @within
#   function
#       player_manager:manage_tag/
#   predicate lib:in_battle
#declare tag PlayerNearbyEnemy