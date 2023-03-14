#> asset:artifact/0690.steam_core/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0690.steam_core/trigger/dis_equip/

# 補正削除

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    function api:modifier/attack/fire/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    function api:modifier/attack/water/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    function api:modifier/receive_heal/remove