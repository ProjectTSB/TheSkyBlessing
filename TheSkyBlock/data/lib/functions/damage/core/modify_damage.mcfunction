#> lib:damage/core/modify_damage
#
# ダメージをlib: Modifiersを元に補正します
#
# @within function
#   lib:damage/core/modifier
#   lib:damage/core/get_status

#> Temp
# @private
    #declare score_holder $Damage
    #declare score_holder $Modifier
    #declare score_holder $Temp

# 必要なデータの取得と加算
    # 元ダメージ
        execute store result score $Damage Temporary run data get storage lib: Argument.Damage 100
    # ベース補正
        execute store result score $Modifier Temporary run data get storage lib: Modifiers.Base 100
    # 第一属性
        execute if data storage lib: Argument{AttackType:"Physical"} store result score $Temp Temporary run data get storage lib: Modifiers.Physical 100
        execute if data storage lib: Argument{AttackType:"Magic"} store result score $Temp Temporary run data get storage lib: Modifiers.Magic 100
        scoreboard players operation $Modifier Temporary += $Temp Temporary
    # 第二属性
        execute if data storage lib: Argument{ElementType:"None"} store result score $Temp Temporary run data get storage lib: Modifiers.None 100
        execute if data storage lib: Argument{ElementType:"Fire"} store result score $Temp Temporary run data get storage lib: Modifiers.Fire 100
        execute if data storage lib: Argument{ElementType:"Water"} store result score $Temp Temporary run data get storage lib: Modifiers.Water 100
        execute if data storage lib: Argument{ElementType:"Thunder"} store result score $Temp Temporary run data get storage lib: Modifiers.Thunder 100
        scoreboard players operation $Modifier Temporary += $Temp Temporary
    # 200%減算
        scoreboard players remove $Modifier Temporary 200
# 最低値設定
    scoreboard players operation $Modifier Temporary > $25 Const
# 補正
    scoreboard players operation $Damage Temporary *= $Modifier Temporary
# 代入
    execute store result storage lib: Argument.Damage float 0.0001 run scoreboard players get $Damage Temporary
# リセット
    data remove storage lib: Modifiers
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Temp Temporary