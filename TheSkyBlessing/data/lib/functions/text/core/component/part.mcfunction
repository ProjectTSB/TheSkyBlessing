#> lib:text/core/component/part
# @within function
#   lib:text/core/component/measure
#   lib:text/core/component/part

# 設定追従の default と、明示指定された uniform・space を区別する
    data modify storage lib:text Work set from storage lib:text Component.Parts[0]
    execute if data storage lib:text Work{Font:"default"} run data modify storage lib:text Work.Font set value "minecraft:default"
    execute if data storage lib:text Work{Font:"uniform"} run data modify storage lib:text Work.Font set value "minecraft:uniform"
    execute if data storage lib:text Work{Font:"space"} run data modify storage lib:text Work.Font set value "minecraft:space"
    execute unless data storage lib:text Work{Font:"minecraft:default"} unless data storage lib:text Work{Font:"minecraft:uniform"} unless data storage lib:text Work{Font:"minecraft:space"} run return fail
    execute unless data storage lib:text Work{Font:"minecraft:default"} run data modify storage lib:text Work.FixedFont set from storage lib:text Work.Font
    execute unless function lib:text/core/measure run return fail

# Default の合計と符号を比較し、int のオーバーフローを検出する
    execute store result score $TextGlyph Temporary run data get storage lib: Return.Default.TextAdvance 2
    scoreboard players operation $TextOld Temporary = $TextDefaultTotal Temporary
    scoreboard players operation $TextDefaultTotal Temporary += $TextGlyph Temporary
    execute if score $TextGlyph Temporary matches 0.. if score $TextDefaultTotal Temporary < $TextOld Temporary run return fail
    execute if score $TextGlyph Temporary matches ..-1 if score $TextDefaultTotal Temporary > $TextOld Temporary run return fail

# Unifont の合計と符号を比較し、int のオーバーフローを検出する
    execute store result score $TextGlyph Temporary run data get storage lib: Return.Unifont.TextAdvance 2
    scoreboard players operation $TextOld Temporary = $TextUniformTotal Temporary
    scoreboard players operation $TextUniformTotal Temporary += $TextGlyph Temporary
    execute if score $TextGlyph Temporary matches 0.. if score $TextUniformTotal Temporary < $TextOld Temporary run return fail
    execute if score $TextGlyph Temporary matches ..-1 if score $TextUniformTotal Temporary > $TextOld Temporary run return fail

# 次の部分へ進む
    data remove storage lib:text Component.Parts[0]
    execute if data storage lib:text Component.Parts[0] run return run function lib:text/core/component/part
    return 1
