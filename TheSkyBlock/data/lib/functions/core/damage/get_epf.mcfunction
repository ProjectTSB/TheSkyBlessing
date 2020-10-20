#> lib:core/damage/get_epf
#
# EPFを取得します
#
# @within function lib:core/damage/get_status

# データ呼び出し
    function oh_my_dat:release
# 物魔耐性値
    execute if data storage lib: {Argument:{AttackType:"Physical"}} store result score $EPF Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.PhysicalDEF
    execute if data storage lib: {Argument:{AttackType:"Magic"}} store result score $EPF Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ModData.MagicDEF
# 属性耐性値
    execute if data storage lib: {Argument:{ElementType:"None"}} run scoreboard players set $Temp Temporary 0
    execute if data storage lib: {Argument:{ElementType:"Fire"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.FireDEF
    execute if data storage lib: {Argument:{ElementType:"Water"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.WaterDEF
    execute if data storage lib: {Argument:{ElementType:"Thunder"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.ThunderDEF
    scoreboard players operation $EPF Temporary += $Temp Temporary
# リセット
    scoreboard players reset $Temp Temporary