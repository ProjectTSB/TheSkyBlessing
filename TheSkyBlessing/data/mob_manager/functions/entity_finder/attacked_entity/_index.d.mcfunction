#> mob_manager:entity_finder/attacked_entity/_index.d
# @private

#> 攻撃したEntity
# `@e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150]`
# @public function
#   mob_manager:entity_finder/attacked_entity/**
#   asset_manager:artifact/triggers/
#   asset_manager:mob/triggers/tick_check
#   core:handler/attack
    #declare tag AttackedEntity

#> フラグ
# @within function mob_manager:entity_finder/attacked_entity/**
    #declare storage mob_manager:attacked_entity
    #declare score_holder $AttackedEntityIndex

#> lib:damage/からの攻撃検出用
# @within function
#   mob_manager:entity_finder/attacked_entity/on_attack
#   api:damage/core/trigger_on_attack
    #declare tag VictimFromLibrary