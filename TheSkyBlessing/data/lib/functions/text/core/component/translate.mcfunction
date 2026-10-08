#> lib:text/core/component/translate
# @within function lib:text/core/component/collect

# 文章を文字列区間と with の参照へ分ける
    data modify storage lib:text Component.Template set value {Pieces:[]}
    data modify storage lib:text Component.Template.Text set from storage lib:text Component.Current.translate
    data modify storage lib:text Component.Template.Remaining set from storage lib:text Component.Current.translate
    scoreboard players set $TextCursor Temporary 0
    scoreboard players set $TextStart Temporary 0
    scoreboard players set $TextAuto Temporary 0
    execute unless function lib:text/core/component/translate_next run return fail
    data modify storage lib:text Component.Children set from storage lib:text Component.Template.Pieces
    return 1
