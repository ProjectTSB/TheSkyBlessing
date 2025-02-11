#> mob_manager:entity_finder/entity_hurt_player/filters/4
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/5

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/check_entity_hurt_player={4-0=true}}] if entity @s[tag=FindFlag4.0] run function mob_manager:entity_finder/entity_hurt_player/filters/3
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/check_entity_hurt_player={4-1=true}}] if entity @s[tag=FindFlag4.1] run function mob_manager:entity_finder/entity_hurt_player/filters/3
