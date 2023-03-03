#> asset:artifact/0899.flame_ring/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0899.flame_ring/trigger/dis_equip/

# 補正を削除
    attribute @s generic.attack_damage modifier remove 1-0-1-0-38300000007
    data modify storage api: Argument.UUID set value [I;1,1,899,7]
    function api:modifier/attack/base/remove
# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=!player_manager:is_believe/urban,predicate=!player_manager:is_believe/rumor] run function asset:artifact/0899.flame_ring/trigger/add_modifier