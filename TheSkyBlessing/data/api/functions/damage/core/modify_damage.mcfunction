#> api:damage/core/modify_damage
#
# ダメージをapi: Modifiersを元に補正します
#
# @within function
#   api:damage/core/modify/player
#   api:damage/core/attack

#> Temp
# @private
    #declare score_holder $Damage
    #declare score_holder $Modifier
    #declare score_holder $Temp
    #declare score_holder $Sum
    #declare score_holder $Difficulty

# 必要なデータの取得と加算
    # 元ダメージ
        execute store result score $Damage Temporary run data get storage api: Damage 100
    # Base値による補正
        execute store result score $Modifier Temporary run data get storage api: Modifiers.Base 100
        execute unless data storage api: Modifiers.Base run scoreboard players set $Modifier Temporary 100
    # 第一属性
        execute if data storage api: Argument{AttackType:"Physical"} store result score $Temp Temporary run data get storage api: Modifiers.Physical 100
        execute if data storage api: Argument{AttackType:"Physical"} unless data storage api: Modifiers.Physical run scoreboard players set $Temp Temporary 100
        execute if data storage api: Argument{AttackType:"Magic"} store result score $Temp Temporary run data get storage api: Modifiers.Magic 100
        execute if data storage api: Argument{AttackType:"Magic"} unless data storage api: Modifiers.Magic run scoreboard players set $Temp Temporary 100
        scoreboard players operation $Sum Temporary += $Temp Temporary
    # 第二属性
        execute if data storage api: Argument{ElementType:"None"} run scoreboard players operation $Temp Temporary = $Sum Temporary
        execute if data storage api: Argument{ElementType:"Fire"} store result score $Temp Temporary run data get storage api: Modifiers.Fire 100
        execute if data storage api: Argument{ElementType:"Fire"} unless data storage api: Modifiers.Fire run scoreboard players set $Temp Temporary 100
        execute if data storage api: Argument{ElementType:"Water"} store result score $Temp Temporary run data get storage api: Modifiers.Water 100
        execute if data storage api: Argument{ElementType:"Water"} unless data storage api: Modifiers.Water run scoreboard players set $Temp Temporary 100
        execute if data storage api: Argument{ElementType:"Thunder"} store result score $Temp Temporary run data get storage api: Modifiers.Thunder 100
        execute if data storage api: Argument{ElementType:"Thunder"} unless data storage api: Modifiers.Thunder run scoreboard players set $Temp Temporary 100
        scoreboard players operation $Sum Temporary += $Temp Temporary
    # 補正の合計から100を引く
        scoreboard players operation $Sum Temporary -= $100 Const
    # 補正値の計算
        scoreboard players operation $Modifier Temporary *= $Sum Temporary
        scoreboard players operation $Modifier Temporary /= $100 Const
# 最低値設定
# $Modifier(e2) = max($Modifier(e2), (0.45 - $Difficulty * 0.10) * e2, 0)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty 10
    scoreboard players operation $Difficulty Temporary *= $-1 Const
    scoreboard players add $Difficulty Temporary 45
    scoreboard players operation $Difficulty Temporary > $0 Const
    scoreboard players operation $Modifier Temporary > $Difficulty Temporary
# 補正
    scoreboard players operation $Damage Temporary *= $Modifier Temporary
# 代入
    execute store result storage api: ModifiedDamage double 0.0001 run scoreboard players get $Damage Temporary
# リセット
    data remove storage api: Damage
    data remove storage api: Modifiers
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Temp Temporary
    scoreboard players reset $Sum Temporary
    scoreboard players reset $Difficulty Temporary
