#> api:mob/kill
#
#
#
# @api

# 殺す (Kill は AssetMob の場合 Death トリガーをもとに付けるのでここでは付けない)
    tag @s add Death
    execute if entity @s[tag=!AssetMob] run tag @s add Kill
# HP を 0 に
    scoreboard players set @s MobHealth 0
# イベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append value {Type:"api",IsVanilla:false}
