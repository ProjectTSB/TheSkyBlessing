#> mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
#
# 多分このfunctionの実行者は攻撃してきたEntityであるはず
#
# @within function mob_manager:entity_finder/attacked_entity/filters/0

# 軽量にセレクターを利用する用のtag
    tag @s add AttackedEntity
# 紐づけ用スコア
    scoreboard players add $AttackedEntityIndex Global 1
    scoreboard players operation @s AttackedEntity = $AttackedEntityIndex Global
    scoreboard players operation @a[tag=this,limit=1] AttackedEntity = $AttackedEntityIndex Global