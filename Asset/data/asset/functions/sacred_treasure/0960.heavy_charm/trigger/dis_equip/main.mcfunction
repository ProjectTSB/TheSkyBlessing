#> asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0960.heavy_charm/trigger/dis_equip/

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 0-8-2-8-39549000000
    data modify storage api: Argument.UUID set value [I;1,1,960,7]
    function api:player_modifier/defense/base/remove

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=!player_manager:is_believe/urban,predicate=!player_manager:is_believe/rumor,predicate=!player_manager:is_believe/flora,predicate=!player_manager:is_believe/nyaptov,predicate=!player_manager:is_believe/wi-ki] run function asset:sacred_treasure/0960.heavy_charm/trigger/add_modifier
