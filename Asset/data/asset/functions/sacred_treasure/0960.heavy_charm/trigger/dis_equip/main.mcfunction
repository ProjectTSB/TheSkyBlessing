#> asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 0-8-2-8-39549000000
    attribute @s minecraft:generic.movement_speed modifier remove 0-8-2-8-84949000000

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:sacred_treasure/0960.heavy_charm/trigger/add_modifier
