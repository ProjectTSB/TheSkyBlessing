#> asset:sacred_treasure/0637.kamui/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0637.kamui/dis_equip/

# 物理耐性増加解除
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,637,5]
    # 補正の削除
        function api:player_modifier/defense/physical/remove

# 魔法耐性増加解除
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,637,5]
    # 補正の削除
        function api:player_modifier/defense/magic/remove

# 満腹度回復解除
    effect clear @s saturation

# 暗視解除
    effect clear @s night_vision

# リジェネ解除
    effect clear @s regeneration