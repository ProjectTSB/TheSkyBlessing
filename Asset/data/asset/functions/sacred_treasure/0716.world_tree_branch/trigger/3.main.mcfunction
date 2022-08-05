#> asset:sacred_treasure/0716.world_tree_branch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0716.world_tree_branch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ^ ^1.2 ^0.4 run function asset:sacred_treasure/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~90 0 positioned ^ ^1.2 ^0.4 run function asset:sacred_treasure/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~180 0 positioned ^ ^1.2 ^0.4 run function asset:sacred_treasure/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~270 0 positioned ^ ^1.2 ^0.4 run function asset:sacred_treasure/0715.world_tree_crown/trigger/leaf_vfx
    execute positioned ~ ~1.2 ~ run function asset:sacred_treasure/0715.world_tree_crown/trigger/circle_vfx

    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.6 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.4 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.2 0

# 体力+5
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-02cc00000005 "0716.MaxHealth" 5 add

# 移動速度+5％
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-02cc00000005 "0716.Speed" 0.05 multiply_base

# MP回復量+10％
    data modify storage api: Argument.UUID set value [I;1,1,716,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add