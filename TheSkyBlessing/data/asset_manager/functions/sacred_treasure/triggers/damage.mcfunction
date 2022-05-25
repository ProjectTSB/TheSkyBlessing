#> asset_manager:sacred_treasure/triggers/damage
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# Attackerのセット
    execute as @e[type=#lib:living,type=!player,tag=AttackingEntity,distance=..150] if score @s AttackingEntity = @a[tag=this,limit=1] AttackingEntity run tag @s add Attacker
# 神器側に受け渡し
    function #asset:sacred_treasure/damage
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/fire=true}] run function #asset:sacred_treasure/damage/fire
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/explode=true}] run function #asset:sacred_treasure/damage/explode
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/from_entity/=true}] run function #asset:sacred_treasure/damage/from_entity/
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/from_entity/blocked=true}] run function #asset:sacred_treasure/damage/from_entity/blocked
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/from_entity/melee=true}] run function #asset:sacred_treasure/damage/from_entity/melee
    execute if entity @s[advancements={asset_manager:sacred_treasure/damage/from_entity/projectile=true}] run function #asset:sacred_treasure/damage/from_entity/projectile
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current
# リセット
    advancement revoke @s only asset_manager:sacred_treasure/damage/fire
    advancement revoke @s only asset_manager:sacred_treasure/damage/explode
    advancement revoke @s only asset_manager:sacred_treasure/damage/from_entity/
    advancement revoke @s only asset_manager:sacred_treasure/damage/from_entity/blocked
    advancement revoke @s only asset_manager:sacred_treasure/damage/from_entity/melee
    advancement revoke @s only asset_manager:sacred_treasure/damage/from_entity/projectile