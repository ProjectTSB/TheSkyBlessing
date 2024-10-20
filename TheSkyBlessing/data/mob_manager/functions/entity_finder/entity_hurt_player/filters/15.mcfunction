#> mob_manager:entity_finder/entity_hurt_player/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={15-0=true}}] if entity @s[tag=FindFlag15.0] run function mob_manager:entity_finder/entity_hurt_player/filters/14
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={15-1=true}}] if entity @s[tag=FindFlag15.1] run function mob_manager:entity_finder/entity_hurt_player/filters/14
