#> asset:sacred_treasure/0980.thunder_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0980.thunder_charm/trigger/dis_equip/

# 音
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 雷威力をリセット
    data modify storage api: Argument.UUID set value [I;1,1,980,7]
    function api:player_modifier/attack/thunder/remove