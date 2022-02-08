#> mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
#
# 多分このfunctionの実行者は攻撃してきたEntityであるはず
#
# @within function mob_manager:entity_finder/attacking_entity/filters/0

# 軽量にセレクターを利用する用のtag
    tag @s add AttackingEntity
# 紐づけ用スコア
    scoreboard players operation @s AttackingEntity = @a[tag=this,limit=1] UserID
    scoreboard players operation @a[tag=this,limit=1] AttackingEntity = @a[tag=this,limit=1] UserID