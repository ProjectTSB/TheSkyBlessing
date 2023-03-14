#> asset:artifact/0979.water_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0979.water_charm/trigger/dis_equip/

# 音
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 水威力をリセット
    data modify storage api: Argument.UUID set value [I;1,1,979,7]
    function api:modifier/attack/water/remove

# 手持ちのチャームを数え直して補正追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:artifact/0979.water_charm/trigger/add_modifier
