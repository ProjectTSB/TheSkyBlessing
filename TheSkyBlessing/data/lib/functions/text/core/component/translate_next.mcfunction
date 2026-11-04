#> lib:text/core/component/translate_next
# @within function
#   lib:text/core/component/translate
#   lib:text/core/component/translate_next

# 走査位置までの本文区間を確定し、文字列の末尾なら切り出して終了する
    execute store result storage lib:text Component.Template.Start int 1 run scoreboard players get $TextStart Temporary
    execute store result storage lib:text Component.Template.End int 1 run scoreboard players get $TextCursor Temporary
    execute if data storage lib:text Component.Template{Remaining:""} if score $TextCursor Temporary > $TextStart Temporary run function lib:text/core/component/slice.m with storage lib:text Component.Template
    execute if data storage lib:text Component.Template{Remaining:""} run return 1

# %を見つけたら、その直前までの本文を切り出す
    data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    execute if data storage lib:text Component.Template{Char:"%"} if score $TextCursor Temporary > $TextStart Temporary run function lib:text/core/component/slice.m with storage lib:text Component.Template

# 1コード単位進め、%の場合は続く書式指定とwithの差し込みを処理する
    data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    scoreboard players add $TextCursor Temporary 1
    execute if data storage lib:text Component.Template{Char:"%"} unless function lib:text/core/component/placeholder run return fail
    return run function lib:text/core/component/translate_next
