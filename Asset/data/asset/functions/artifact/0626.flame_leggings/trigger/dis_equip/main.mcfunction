#> asset:artifact/0626.flame_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0626.flame_leggings/trigger/dis_equip/

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,626,4]
    function api:modifier/defense/fire/remove

# 火攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,626,4]
    function api:modifier/attack/fire/remove

# 演出
    playsound entity.generic.burn player @a ~ ~ ~ 0.2 1 0

# フルセット効果を削除
    execute if entity @s[tag=HD.Fullset] run function asset:artifact/0625.flame_armor/trigger/5.fullset_dis_equip