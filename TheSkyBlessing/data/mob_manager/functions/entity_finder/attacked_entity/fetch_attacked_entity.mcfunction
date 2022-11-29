#> mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
#
# 多分このfunctionの実行者は攻撃したEntityであるはず
#
# @within function mob_manager:entity_finder/attacked_entity/filters/0

# 軽量にセレクターを利用する用のtag
    tag @s add AttackedEntity
# 紐づけ用スコア
    scoreboard players operation @s AttackedEntity = @p[tag=TargetEntity] UserID
    scoreboard players operation @p[tag=TargetEntity] AttackedEntity = @p[tag=TargetEntity] UserID