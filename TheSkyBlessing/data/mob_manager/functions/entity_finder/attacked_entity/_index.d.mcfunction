#> mob_manager:entity_finder/attacked_entity/_index.d
# @private

#> 攻撃したPlayer
# @within function
#   mob_manager:entity_finder/attacked_entity/**
#   asset_manager:mob/triggers/hurt/foreach
#declare tag AttackedPlayer

#> 攻撃されたEntity
# `@e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150]`
# @within function
#   mob_manager:entity_finder/attacked_entity/**
#   asset_manager:artifact/triggers/
#   asset_manager:mob/triggers/tick_check
#   core:handler/attack
#declare tag AttackedEntity
