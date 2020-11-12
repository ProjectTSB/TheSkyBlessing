#> asset_manager:sacred_treasure/triggers/damage
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/damage

function asset_manager:sacred_treasure/core/set_id

function #asset:sacred_treasure/damage
execute if entity @s[advancements={asset_manager:sacred_treasure/damage/melee=true}] run function #asset:sacred_treasure/damage/melee
execute if entity @s[advancements={asset_manager:sacred_treasure/damage/projectile=true}] run function #asset:sacred_treasure/damage/projectile
execute if entity @s[advancements={asset_manager:sacred_treasure/damage/blocked=true}] run function #asset:sacred_treasure/damage/blocked