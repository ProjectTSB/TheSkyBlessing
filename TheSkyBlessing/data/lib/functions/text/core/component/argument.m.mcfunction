#> lib:text/core/component/argument.m
# @within function lib:text/core/component/placeholder

# 文字列の引数を text へ揃え、compound の引数は装飾を保つ
    data modify storage lib:text Component.Template.Check set value [""]
    $data modify storage lib:text Component.Template.Check append from storage lib:text Component.Current.with[$(Index)]
    data modify storage lib:text Component.Template.Piece set value {}
    execute if data storage lib:text Component.Template.Check[1] run data modify storage lib:text Component.Template.Piece.text set from storage lib:text Component.Template.Check[1]
    execute if data storage lib:text Component.Template.Check[1] run data modify storage lib:text Component.Template.Pieces append from storage lib:text Component.Template.Piece
    execute if data storage lib:text Component.Template.Check[1] run return 1
    data modify storage lib:text Component.Template.Check set value [{}]
    $data modify storage lib:text Component.Template.Check append from storage lib:text Component.Current.with[$(Index)]
    execute unless data storage lib:text Component.Template.Check[1] run return fail
    data modify storage lib:text Component.Template.Pieces append from storage lib:text Component.Template.Check[1]
    return 1
