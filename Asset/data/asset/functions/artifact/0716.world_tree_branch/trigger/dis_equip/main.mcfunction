#> asset:artifact/0716.world_tree_branch/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0716.world_tree_branch/trigger/dis_equip/

# 演出
    particle falling_dust glow_lichen ~ ~1.2 ~ 0.4 0.3 0.4 0 20 normal @a
    particle block oak_leaves ~ ~1.2 ~ 0.4 0.3 0.4 0 20 normal @a
    playsound block.grass.break player @a ~ ~ ~ 1 1 0

# 以下の補正を消す

# 体力+5%
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-02cc00000005

# 移動速度+5％
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02cc00000005

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,716,5]
    function api:modifier/mp_regen/remove

# 攻撃力-5%
    data modify storage api: Argument.UUID set value [I;1,1,716,5]
    function api:modifier/attack/base/remove