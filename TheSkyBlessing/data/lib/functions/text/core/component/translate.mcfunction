#> lib:text/core/component/translate
# @within function lib:text/core/component/collect

# translateの原文と走査位置を用意する
# Cursorは現在位置、Startは未確定の本文の先頭、Autoは次の%sが参照する添字
    data modify storage lib:text Component.Template set value {Pieces:[]}
    data modify storage lib:text Component.Template.Text set from storage lib:text Component.Current.translate
    data modify storage lib:text Component.Template.Remaining set from storage lib:text Component.Current.translate
    scoreboard players set $TextCursor Temporary 0
    scoreboard players set $TextStart Temporary 0
    scoreboard players set $TextAuto Temporary 0

# 本文とwithの差し込みをPiecesへ展開し、子要素としてcollectへ渡す
    execute unless function lib:text/core/component/translate_next run return fail
    data modify storage lib:text Component.Children set from storage lib:text Component.Template.Pieces
    return 1
