#> lib:text/core/component/index
# @within function
#   lib:text/core/component/placeholder
#   lib:text/core/component/index

# 数字列を読み、1始まりの番号を配列添字へ変換する
    data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    data modify storage lib:text Component.Template.IndexEnd set value false
    execute if data storage lib:text Component.Template{Char:"$"} run data modify storage lib:text Component.Template.IndexEnd set value true
    execute if data storage lib:text Component.Template{Char:"$"} if score $TextArg Temporary matches ..0 run return fail
    execute if data storage lib:text Component.Template{Char:"$"} run data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    execute if data storage lib:text Component.Template{Char:"$"} run scoreboard players add $TextCursor Temporary 1
    execute if data storage lib:text Component.Template{Char:"$"} run scoreboard players remove $TextArg Temporary 1
    execute if data storage lib:text Component.Template{Char:"$"} run data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    execute if data storage lib:text Component.Template{IndexEnd:true,Char:"s"} run return 1
    execute if data storage lib:text Component.Template{IndexEnd:true} run return fail
    scoreboard players set $TextDigit Temporary -1
    execute if data storage lib:text Component.Template{Char:"0"} run scoreboard players set $TextDigit Temporary 0
    execute if data storage lib:text Component.Template{Char:"1"} run scoreboard players set $TextDigit Temporary 1
    execute if data storage lib:text Component.Template{Char:"2"} run scoreboard players set $TextDigit Temporary 2
    execute if data storage lib:text Component.Template{Char:"3"} run scoreboard players set $TextDigit Temporary 3
    execute if data storage lib:text Component.Template{Char:"4"} run scoreboard players set $TextDigit Temporary 4
    execute if data storage lib:text Component.Template{Char:"5"} run scoreboard players set $TextDigit Temporary 5
    execute if data storage lib:text Component.Template{Char:"6"} run scoreboard players set $TextDigit Temporary 6
    execute if data storage lib:text Component.Template{Char:"7"} run scoreboard players set $TextDigit Temporary 7
    execute if data storage lib:text Component.Template{Char:"8"} run scoreboard players set $TextDigit Temporary 8
    execute if data storage lib:text Component.Template{Char:"9"} run scoreboard players set $TextDigit Temporary 9
    execute if score $TextDigit Temporary matches -1 run return fail
    execute if score $TextArg Temporary matches 214748365.. run return fail
    execute if score $TextArg Temporary matches 214748364 if score $TextDigit Temporary matches 8.. run return fail
    scoreboard players operation $TextArg Temporary *= $10 Const
    scoreboard players operation $TextArg Temporary += $TextDigit Temporary
    data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    scoreboard players add $TextCursor Temporary 1
    execute if data storage lib:text Component.Template{Remaining:""} run return fail
    return run function lib:text/core/component/index
