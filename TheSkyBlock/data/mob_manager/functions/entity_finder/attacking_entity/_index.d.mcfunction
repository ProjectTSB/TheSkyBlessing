#> mob_manager:entity_finder/attacking_entity/_index.d
# @private

#> 攻撃してきたEntity
# `@e[type=#lib:living,type=!player,tag=AttackingEntity,distance=..150]`
# @public
    #declare tag AttackingEntity

#> フラグ
# @within function mob_manager:entity_finder/attacking_entity/**
    #declare storage mob_manager:attacking_entity
    #declare score_holder $AttackingEntityIndex