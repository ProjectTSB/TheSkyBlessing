#> asset:artifact/0007.nitrogen_fixater/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0007.nitrogen_fixater/trigger/2.check_condition

#> prv
# @private
    #declare score_holder $7.IsPeace # 0: 火薬を入手 1: 骨粉を入手

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 水入り瓶をガラス瓶に置き換え
    clear @s minecraft:potion{Potion:"minecraft:water"} 1
    give @s glass_bottle 1

# 信仰神検知
    execute if predicate player_manager:is_believe/urban run scoreboard players set $7.IsPeace Temporary 0
    execute if predicate player_manager:is_believe/wi-ki run scoreboard players set $7.IsPeace Temporary 0
    execute if predicate player_manager:is_believe/null run scoreboard players set $7.IsPeace Temporary 1
    execute if predicate player_manager:is_believe/flora run scoreboard players set $7.IsPeace Temporary 1
    execute if predicate player_manager:is_believe/nyaptov run scoreboard players set $7.IsPeace Temporary 1
    execute if predicate player_manager:is_believe/rumor run scoreboard players set $7.IsPeace Temporary 1

# アイテム付与
    execute if score $7.IsPeace Temporary matches 0 run give @s gunpowder 1
    execute if score $7.IsPeace Temporary matches 1 run give @s bone_meal 1

# reset
    scoreboard players reset $7.IsPeace Temporary