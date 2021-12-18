#> lib:damage/core/modify_damage
#
# ダメージをlib: Modifiersを元に補正します
#
# @within function
#   lib:damage/core/modify/player
#   lib:damage/core/get_status/cons_resist

#> Temp
# @private
    #declare score_holder $Damage
    #declare score_holder $Modifier
    #declare score_holder $Temp
    #declare score_holder $Average

# 必要なデータの取得と加算
    # 元ダメージ
        execute store result score $Damage Temporary run data get storage lib: Argument.Damage 100
    # Base値による補正
        execute store result score $Modifier Temporary run data get storage lib: Modifiers.Base 100
        execute unless data storage lib: Modifiers.Base run scoreboard players set $Modifier Temporary 100
    # 第一属性
        execute if data storage lib: Argument{AttackType:"Physical"} store result score $Temp Temporary run data get storage lib: Modifiers.Physical 100
        execute if data storage lib: Argument{AttackType:"Physical"} unless data storage lib: Modifiers.Physical run scoreboard players set $Temp Temporary 100
        execute if data storage lib: Argument{AttackType:"Magic"} store result score $Temp Temporary run data get storage lib: Modifiers.Magic 100
        execute if data storage lib: Argument{AttackType:"Magic"} unless data storage lib: Modifiers.Magic run scoreboard players set $Temp Temporary 100
        scoreboard players operation $Average Temporary += $Temp Temporary
    # 第二属性
        execute if data storage lib: Argument{ElementType:"None"} run scoreboard players operation $Temp Temporary = $Average Temporary
        execute if data storage lib: Argument{ElementType:"Fire"} store result score $Temp Temporary run data get storage lib: Modifiers.Fire 100
        execute if data storage lib: Argument{ElementType:"Fire"} unless data storage lib: Modifiers.Fire run scoreboard players set $Temp Temporary 100
        execute if data storage lib: Argument{ElementType:"Water"} store result score $Temp Temporary run data get storage lib: Modifiers.Water 100
        execute if data storage lib: Argument{ElementType:"Water"} unless data storage lib: Modifiers.Water run scoreboard players set $Temp Temporary 100
        execute if data storage lib: Argument{ElementType:"Thunder"} store result score $Temp Temporary run data get storage lib: Modifiers.Thunder 100
        execute if data storage lib: Argument{ElementType:"Thunder"} unless data storage lib: Modifiers.Thunder run scoreboard players set $Temp Temporary 100
        scoreboard players operation $Average Temporary += $Temp Temporary
    # 平均値
        scoreboard players operation $Average Temporary /= $2 Const
    # 補正値の計算
        scoreboard players operation $Modifier Temporary *= $Average Temporary
        scoreboard players operation $Modifier Temporary /= $100 Const
# 最低値設定
    scoreboard players operation $Modifier Temporary > $25 Const
# 補正
    scoreboard players operation $Damage Temporary *= $Modifier Temporary
# 代入
    execute store result storage lib: ModifiedDamage double 0.0001 run scoreboard players get $Damage Temporary
# リセット
    data remove storage lib: Modifiers
    scoreboard players reset $Average Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Temp Temporary