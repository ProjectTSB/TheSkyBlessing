#> api:mob/core/kill
#
#
#
# @within function api:mob/kill

# 殺す (Kill は AssetMob の場合 Death トリガーをもとに付けるのでここでは付けない)
    tag @s add Death
    execute unless function api:mob/is_asset_mob run tag @s add Kill
# HP を 0 に
    scoreboard players set @s MobHealth 0
# イベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append value {Type:"api",IsVanilla:false}
