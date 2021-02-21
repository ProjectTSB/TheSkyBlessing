#> mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
#
# 多分このfunctionの実行者は攻撃してきたEntityであるはず
#
# @within function mob_manager:entity_finder/attacking_entity/filters/0

# 軽量にセレクターを利用する用のtag
    tag @s add AttackingEntity
# 紐づけ用スコア
    scoreboard players add $AttackingEntityIndex Global 1
    scoreboard players operation @s AttackingEntity = $AttackingEntityIndex Global
    scoreboard players operation @a[tag=this] AttackingEntity = $AttackingEntityIndex Global