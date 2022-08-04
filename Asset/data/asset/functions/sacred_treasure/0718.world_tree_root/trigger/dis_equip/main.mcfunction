#> asset:sacred_treasure/0718.world_tree_root/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0718.world_tree_root/trigger/dis_equip/

# 以下の補正を消す

# 体力+5
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-02ce00000003

# 移動速度+5％
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02ce00000003

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,718,3]
    function api:player_modifier/mp_regen/remove