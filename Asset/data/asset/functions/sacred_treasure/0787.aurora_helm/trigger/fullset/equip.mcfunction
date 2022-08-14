#> asset:sacred_treasure/0787.aurora_helm/trigger/fullset/equip
#
# フルセット時の処理
#
# @within function
#   asset:sacred_treasure/0787.aurora_helm/trigger/3.main
#   asset:sacred_treasure/0788.aurora_armor/trigger/3.main
#   asset:sacred_treasure/0789.aurora_leggings/trigger/3.main
#   asset:sacred_treasure/0790.aurora_boots/trigger/3.main

# フルセットTag
    tag @s add LT.Fullset

# フルセット時の演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/vfx
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.7 1.8 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.6 0

# 雷攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,787,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/thunder/add

# 移動速度+20%
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-031300000000 "LT.FullsetSpeed" 0.2 multiply_base

# スケジュールループ
    schedule function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/loop 1t replace