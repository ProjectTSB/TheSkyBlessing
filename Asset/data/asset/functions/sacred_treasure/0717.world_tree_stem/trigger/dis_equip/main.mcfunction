#> asset:sacred_treasure/0717.world_tree_stem/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0717.world_tree_stem/trigger/dis_equip/

# 以下の補正を消す

# 体力+5
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-02cd00000004

# 移動速度+5％
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02cd00000004

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    function api:player_modifier/mp_regen/remove