#> asset:artifact/0631.ice_boots/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0631.ice_boots/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,631,3]
# 補正の削除
    function api:modifier/defense/water/remove

    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.8 0

# フルセット効果削除
    execute if entity @s[tag=HH.Fullset] run function asset:artifact/0629.ice_armor/trigger/5.fullset_dis_equip