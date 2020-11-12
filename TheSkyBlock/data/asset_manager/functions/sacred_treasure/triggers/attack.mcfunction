#> asset_manager:sacred_treasure/triggers/attack
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/attack

function asset_manager:sacred_treasure/core/set_id

function #asset:sacred_treasure/attack
execute if entity @s[advancements={asset_manager:sacred_treasure/attack/melee=true}] run function #asset:sacred_treasure/attack/melee
execute if entity @s[advancements={asset_manager:sacred_treasure/attack/projectile=true}] run function #asset:sacred_treasure/attack/projectile