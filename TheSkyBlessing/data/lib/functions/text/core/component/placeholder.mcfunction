#> lib:text/core/component/placeholder
# @within function lib:text/core/component/translate_next

# %の直後を読み、%%なら本文に%を追加する
    execute if data storage lib:text Component.Template{Remaining:""} run return fail
    data modify storage lib:text Component.Template.Char set string storage lib:text Component.Template.Remaining 0 1
    execute if data storage lib:text Component.Template{Char:"%"} run data modify storage lib:text Component.Template.Pieces append value {text:"%"}

# withの添字を決める
# %sだけで出現順の番号を進め、%N$sは指定番号を使う
    scoreboard players operation $TextArg Temporary = $TextAuto Temporary
    execute if data storage lib:text Component.Template{Char:"s"} run scoreboard players add $TextAuto Temporary 1
    execute unless data storage lib:text Component.Template{Char:"%"} unless data storage lib:text Component.Template{Char:"s"} run scoreboard players set $TextArg Temporary 0
    execute unless data storage lib:text Component.Template{Char:"%"} unless data storage lib:text Component.Template{Char:"s"} unless function lib:text/core/component/index run return fail

# 選んだwithの要素を差し込み、不足や未対応の型は失敗にする
    execute unless data storage lib:text Component.Template{Char:"%"} store result storage lib:text Component.Template.Index int 1 run scoreboard players get $TextArg Temporary
    execute unless data storage lib:text Component.Template{Char:"%"} store success score $TextValid Temporary run function lib:text/core/component/argument.m with storage lib:text Component.Template
    execute unless data storage lib:text Component.Template{Char:"%"} unless score $TextValid Temporary matches 1 run return fail

# 書式指定の末尾を消費し、次に切り出す本文の開始位置を更新する
    data modify storage lib:text Component.Template.Remaining set string storage lib:text Component.Template.Remaining 1
    scoreboard players add $TextCursor Temporary 1
    scoreboard players operation $TextStart Temporary = $TextCursor Temporary
    return 1
