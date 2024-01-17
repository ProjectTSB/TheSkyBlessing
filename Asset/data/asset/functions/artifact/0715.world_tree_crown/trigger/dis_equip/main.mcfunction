#> asset:artifact/0715.world_tree_crown/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0715.world_tree_crown/trigger/dis_equip/

# 演出
    particle falling_dust glow_lichen ~ ~1.7 ~ 0.4 0.2 0.4 0 20 normal @a
    particle block oak_leaves ~ ~1.7 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound block.grass.break player @a ~ ~ ~ 1 1 0

# 以下の補正を消す

# 体力+5%
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-02cb00000006

# 移動速度+5％
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02cb00000006

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,715,6]
    function api:modifier/mp_regen/remove

# 攻撃力-5%
    data modify storage api: Argument.UUID set value [I;1,1,715,6]
    function api:modifier/attack/base/remove