#> mob_manager:entity_finder/entity_hurt_player/filters/9
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/10

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={9-0=true}}] if entity @s[tag=FindFlag9.0] run function mob_manager:entity_finder/entity_hurt_player/filters/8
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={9-1=true}}] if entity @s[tag=FindFlag9.1] run function mob_manager:entity_finder/entity_hurt_player/filters/8
