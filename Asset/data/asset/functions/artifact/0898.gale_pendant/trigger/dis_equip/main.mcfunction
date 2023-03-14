#> asset:artifact/0898.gale_pendant/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0898.gale_pendant/trigger/dis_equip/

# 補正を削除
    attribute @s generic.movement_speed modifier remove 1-0-1-0-38200000007
# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=!player_manager:is_believe/flora,predicate=!player_manager:is_believe/nyaptov] run function asset:artifact/0898.gale_pendant/trigger/add_modifier