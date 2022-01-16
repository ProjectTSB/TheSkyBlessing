#> asset_manager:island/tick/
#
#
#
# @within function core:tick/

# 解呪処理
    execute if entity @s[tag=!CantDispel] if entity @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/
    execute unless entity @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/cancelled