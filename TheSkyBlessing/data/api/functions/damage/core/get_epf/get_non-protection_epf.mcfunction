#> api:damage/core/get_epf/get_non-protection_epf
#
#
#
# @within function api:damage/core/get_epf/

#> Temp
# @private
    #declare score_holder $Temp
    #declare score_holder $TypeModifier

# ReduceEnchantmentIdのデータ正規化
execute if data storage lib: Argument.ReduceEnchantment.id run data modify storage lib: ReduceEnchantmentID set from storage lib: Argument.ReduceEnchantment.id
execute unless data storage lib: Argument.ReduceEnchantment.id run data modify storage lib: ReduceEnchantmentID set from storage lib: Argument.ReduceEnchantment

# セッション開く
    function lib:array/session/open
# 該当エンチャントのIndex(es)を調べる
# CompareResult = Array.map(v => v.id === CompareTarget)
    data modify storage lib: Array append from storage lib: Enchantments[].id
    data modify storage lib: CompareTarget set from storage lib: ReduceEnchantmentID
    function lib:array/compare_single
# 該当エンチャントのデータを取得する
# Array = Array.filter((_, i) => !Masks[i])
    data modify storage lib: Array set from storage api: Enchantments
    data modify storage lib: Masks set from storage lib: CompareResult
  # data modify storage api: MaskElement set value null
    function lib:array/mask_inverted
# エンチャントレベルの総和を計算する
# SumResult = Array.map(v => v.lvl).reduce((a, b) => a + b)
    data modify storage lib: Temp append from storage lib: Array[].lvl
    data modify storage lib: Array set from storage lib: Temp
    data remove storage lib: Temp
    function lib:array/math/sum
# 計算結果を取得する
    execute store result score $Temp Temporary run data get storage lib: SumResult
# セッションを閉じる
    function lib:array/session/close
# エンチャント係数を取得する
    execute if data storage lib: Argument.ReduceEnchantment.modifier store result score $TypeModifier Temporary run data get storage lib: Argument.ReduceEnchantment.modifier
    execute unless score $TypeModifier Temporary matches -2147483648.. if data storage lib: {ReduceEnchantmentID:      "minecraft:fire_protection"} run scoreboard players set $TypeModifier Temporary 2
    execute unless score $TypeModifier Temporary matches -2147483648.. if data storage lib: {ReduceEnchantmentID:     "minecraft:blast_protection"} run scoreboard players set $TypeModifier Temporary 2
    execute unless score $TypeModifier Temporary matches -2147483648.. if data storage lib: {ReduceEnchantmentID:"minecraft:projectile_protection"} run scoreboard players set $TypeModifier Temporary 2
    execute unless score $TypeModifier Temporary matches -2147483648.. if data storage lib: {ReduceEnchantmentID:      "minecraft:feather_falling"} run scoreboard players set $TypeModifier Temporary 3
    execute unless score $TypeModifier Temporary matches -2147483648.. run scoreboard players set $TypeModifier Temporary 1
# エンチャント係数を掛ける
    scoreboard players operation $Temp Temporary *= $TypeModifier Temporary
# EPFに加算する
    scoreboard players operation $EPF Temporary += $Temp Temporary
# リセット
    scoreboard players reset $Temp Temporary
    scoreboard players reset $TypeModifier Temporary
