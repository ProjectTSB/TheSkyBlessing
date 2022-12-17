#> asset:sacred_treasure/0630.ice_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0630.ice_leggings/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,630,4]
# 補正の削除
    function api:player_modifier/defense/water/remove

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.8 0

# フルセット効果削除
    execute if entity @s[tag=HH.Fullset] run function asset:sacred_treasure/0629.ice_armor/trigger/5.fullset_dis_equip
