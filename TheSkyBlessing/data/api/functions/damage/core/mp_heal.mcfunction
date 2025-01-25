#> api:damage/core/mp_heal
#
#
#
# @within function api:damage/core/attack

#> private
# @private
    #declare score_holder $MPHeal
    #declare score_holder $Modifier

# 補正を取得
    function api:modifier/mp_regen/get
# 回復量計算
    execute store result score $MPHeal Temporary run data get storage api: Argument.AdditionalMPHeal 100
    execute store result score $Modifier Temporary run data get storage api: Return.MPRegen 100
    scoreboard players operation $MPHeal Temporary *= $Modifier Temporary
    execute store result storage api: Argument.Fluctuation double 0.01 run scoreboard players operation $MPHeal Temporary /= $100 Const
# 表示を無効化する
    data modify storage api: Argument.DisableLog set value true
# 回復
    function api:mp/fluctuation
# リセット
    scoreboard players reset $MPHeal Temporary
    scoreboard players reset $Modifier Temporary
