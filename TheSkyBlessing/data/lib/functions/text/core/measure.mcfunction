#> lib:text/core/measure
#
# @within function
#   lib:text/measure
#   lib:text/core/component/part

# 同じ文字列を default と uniform で計測する
    data modify storage lib:text Work.Original set from storage lib:text Work.Text
    data modify storage lib:text Work.Font set value "minecraft:default"
    execute if data storage lib:text Work.FixedFont run data modify storage lib:text Work.Font set from storage lib:text Work.FixedFont
    execute unless function lib:text/core/one run return fail
    data modify storage lib:text Work.Default set from storage lib:text Work.Result
    data modify storage lib:text Work.Text set from storage lib:text Work.Original
    data modify storage lib:text Work.Font set value "minecraft:uniform"
    execute if data storage lib:text Work.FixedFont run data modify storage lib:text Work.Font set from storage lib:text Work.FixedFont
    execute unless function lib:text/core/one run return fail
    data modify storage lib: Return.Default set from storage lib:text Work.Default
    data modify storage lib: Return.Unifont set from storage lib:text Work.Result
    return 1
