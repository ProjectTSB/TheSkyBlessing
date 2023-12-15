#> asset:artifact/1032.life_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1032.life_charm/trigger/dis_equip/

# 演出
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 補正を削除
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-040800000007

# 最大体力を反映するための即時回復
    effect give @s instant_health 1 0

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1032}}}] run function asset:artifact/1032.life_charm/trigger/add_modifier