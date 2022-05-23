#> asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-3c000000007
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-3c000000007

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:sacred_treasure/0960.heavy_charm/trigger/add_modifier
