#> asset:artifact/0736.sailor_hat/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0736.sailor_hat/trigger/dis_equip/

# 物理攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,736,6]
    function api:modifier/attack/physical/remove

# 水攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,736,6]
    function api:modifier/attack/water/remove

# 移動速度+7.5%
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-02e000000006

# 魔法攻撃-15%
    data modify storage api: Argument.UUID set value [I;1,1,736,6]
    function api:modifier/attack/magic/remove