#> lib:text/core/component/placeholder
# @within function lib:text/core/component/translate_next

# %% は文字、%s は出現順、%N$s は番号指定で with を参照する
    execute if data storage lib:text Component.Template{Remaining:""} run return fail
    data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    execute if data storage lib:text Component.Template{Char:"%"} run data modify storage lib:text Component.Template.Pieces append value {text:"%"}
    scoreboard players operation $TextArg Temporary = $TextAuto Temporary
    execute if data storage lib:text Component.Template{Char:"s"} run scoreboard players add $TextAuto Temporary 1
    execute unless data storage lib:text Component.Template{Char:"%"} unless data storage lib:text Component.Template{Char:"s"} run scoreboard players set $TextArg Temporary 0
    execute unless data storage lib:text Component.Template{Char:"%"} unless data storage lib:text Component.Template{Char:"s"} unless function lib:text/core/component/index run return fail
    execute unless data storage lib:text Component.Template{Char:"%"} store result storage lib:text Component.Template.Index int 1 run scoreboard players get $TextArg Temporary
    execute unless data storage lib:text Component.Template{Char:"%"} store result score $TextValid Temporary run function lib:text/core/component/argument.m with storage lib:text Component.Template
    execute unless data storage lib:text Component.Template{Char:"%"} unless score $TextValid Temporary matches 1 run return fail
    data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    scoreboard players add $TextCursor Temporary 1
    scoreboard players operation $TextStart Temporary = $TextCursor Temporary
    return 1
