#> asset:sacred_treasure/0683.moonlight_armor/10.remove_modifier
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/8.player_tick
# @within function asset:sacred_treasure/0683.moonlight_armor/9.fullset_dis_equip

# タグ削除
    tag @s remove IZ.UnderTheMoon

# 補正を削除
    # 魔法ダメージ量
        data modify storage api: Argument.UUID set value [I;1,1,683,5]
        function api:player_modifier/attack/magic/remove

    # 魔法耐性
        data modify storage api: Argument.UUID set value [I;1,1,683,5]
        function api:player_modifier/defense/magic/remove

    # MP回復量
        data modify storage api: Argument.UUID set value [I;1,1,683,5]
        function api:player_modifier/mp_regen/remove