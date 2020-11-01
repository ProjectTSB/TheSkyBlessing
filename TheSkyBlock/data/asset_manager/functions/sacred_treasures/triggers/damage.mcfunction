#> asset_manager:sacred_treasures/triggers/damage
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/damage

function asset_manager:sacred_treasures/core/set_id

function #asset:sacred_treasures/damage
execute if entity @s[advancements={asset_manager:sacred_treasures/damage/melee=true}] run function #asset:sacred_treasures/damage/melee
execute if entity @s[advancements={asset_manager:sacred_treasures/damage/projectile=true}] run function #asset:sacred_treasures/damage/projectile
execute if entity @s[advancements={asset_manager:sacred_treasures/damage/blocked=true}] run function #asset:sacred_treasures/damage/blocked