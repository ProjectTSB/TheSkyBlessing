#> lib:damage/core/get_type_defence
#
# EPFを取得します
#
# @within function lib:damage/core/get_status

#> Temp
# @private
    #declare score_holder $Temp

# データ呼び出し
    function oh_my_dat:please
# 物魔耐性値
    execute if data storage lib: {Argument:{AttackType:"Physical"}} store result score $EPF Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.DEF.Physical
    execute if data storage lib: {Argument:{AttackType:"Magic"}} store result score $EPF Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ModData.DEF.Magic
# 属性耐性値
    execute if data storage lib: {Argument:{ElementType:"None"}} run scoreboard players set $Temp Temporary 0
    execute if data storage lib: {Argument:{ElementType:"Fire"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.DEF.Fire
    execute if data storage lib: {Argument:{ElementType:"Water"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.DEF.Water
    execute if data storage lib: {Argument:{ElementType:"Thunder"}} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.DEF.Thunder
    scoreboard players operation $EPF Temporary += $Temp Temporary
# リセット
    scoreboard players reset $Temp Temporary