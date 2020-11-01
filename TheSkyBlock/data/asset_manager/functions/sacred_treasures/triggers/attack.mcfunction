#> asset_manager:sacred_treasures/triggers/attack
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/attack

function asset_manager:sacred_treasures/core/set_id

function #asset:sacred_treasures/attack
execute if entity @s[advancements={asset_manager:sacred_treasures/attack/melee=true}] run function #asset:sacred_treasures/attack/melee
execute if entity @s[advancements={asset_manager:sacred_treasures/attack/projectile=true}] run function #asset:sacred_treasures/attack/projectile