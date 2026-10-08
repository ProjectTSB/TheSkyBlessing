#> lib:text/core/component/translate_next
# @within function
#   lib:text/core/component/translate
#   lib:text/core/component/translate_next

# 書式指定の前後にある本文を元の文字列から切り出す
    execute store result storage lib:text Component.Template.Start int 1 run scoreboard players get $TextStart Temporary
    execute store result storage lib:text Component.Template.End int 1 run scoreboard players get $TextCursor Temporary
    execute if data storage lib:text Component.Template{Remaining:""} if score $TextCursor Temporary > $TextStart Temporary run function lib:text/core/component/slice.m with storage lib:text Component.Template
    execute if data storage lib:text Component.Template{Remaining:""} run return 1
    data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    execute if data storage lib:text Component.Template{Char:"%"} if score $TextCursor Temporary > $TextStart Temporary run function lib:text/core/component/slice.m with storage lib:text Component.Template
    data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    scoreboard players add $TextCursor Temporary 1
    execute if data storage lib:text Component.Template{Char:"%"} unless function lib:text/core/component/placeholder run return fail
    return run function lib:text/core/component/translate_next
