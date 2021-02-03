#> lib:damage/core/modifier
#
#
#
# @within function lib:damage/modifier

#> Temp
# @private
    #declare score_holder $Damage
    #declare score_holder $Modifier
    #declare score_holder $Temp

# ユーザーストレージ呼び出し
    function oh_my_dat:please
# 必要なデータの取得と加算
    # 元ダメージ
        execute store result score $Damage Temporary run data get storage lib: Argument.Damage 100
    # ベース
        execute store result score $Modifier Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Damage 100
    # 第一属性
        execute if data storage lib: Argument{AttackType:"Physical"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.Physical 100
        execute if data storage lib: Argument{AttackType:"Magic"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.Magic 100
        scoreboard players operation $Modifier Temporary += $Temp Temporary
    # 第二属性
        execute if data storage lib: Argument{ElementType:"None"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.None 100
        execute if data storage lib: Argument{ElementType:"Fire"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.Fire 100
        execute if data storage lib: Argument{ElementType:"Water"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.Water 100
        execute if data storage lib: Argument{ElementType:"Thunder"} store result score $Temp Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.AttackType.Thunder 100
        scoreboard players operation $Modifier Temporary += $Temp Temporary
    # 200%減算
        scoreboard players remove $Modifier Temporary 200
# 補正
    scoreboard players operation $Damage Temporary *= $Modifier Temporary
# 代入
    execute store result storage lib: Argument.Damage float 0.0001 run scoreboard players get $Damage Temporary
# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Temp Temporary