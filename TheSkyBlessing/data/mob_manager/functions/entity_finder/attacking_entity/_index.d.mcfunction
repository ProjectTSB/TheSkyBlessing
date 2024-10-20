#> mob_manager:entity_finder/attacking_entity/_index.d
# @private

#> 攻撃されたPlayer
# @within function mob_manager:entity_finder/attacking_entity/**
#declare tag AttackingPlayer

#> 攻撃してきたEntity
# `@e[type=#lib:living,type=!player,tag=AttackingEntity,distance=..150]`
# @public function
#   mob_manager:entity_finder/attacking_entity/**
#   asset_manager:artifact/triggers/
#   asset_manager:mob/triggers/tick_check
    #declare tag AttackingEntity

#> lib:damage/からの攻撃検出用
# @within function
#   mob_manager:entity_finder/attacking_entity/on_hurt
#   api:damage/core/trigger_on_damage/as_attacker
    #declare tag AttackerFromLibrary
