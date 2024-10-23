#> mob_manager:entity_finder/entity_hurt_player/filters/13
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/14

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={13-0=true}}] if entity @s[tag=FindFlag13.0] run function mob_manager:entity_finder/entity_hurt_player/filters/12
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={13-1=true}}] if entity @s[tag=FindFlag13.1] run function mob_manager:entity_finder/entity_hurt_player/filters/12
