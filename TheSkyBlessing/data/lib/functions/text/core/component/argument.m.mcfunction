#> lib:text/core/component/argument.m
# @within function lib:text/core/component/placeholder

# withの文字列をtextを持つcompoundへ変換し、Piecesへ追加する
    data modify storage lib:text Component.Template.Check set value [""]
    $data modify storage lib:text Component.Template.Check append from storage lib:text Component.Current.with[$(Index)]
    data modify storage lib:text Component.Template.Piece set value {}
    execute if data storage lib:text Component.Template.Check[1] run data modify storage lib:text Component.Template.Piece.text set from storage lib:text Component.Template.Check[1]
    execute if data storage lib:text Component.Template.Check[1] run data modify storage lib:text Component.Template.Pieces append from storage lib:text Component.Template.Piece
    execute if data storage lib:text Component.Template.Check[1] run return 1

# withのcompoundは装飾を含めてPiecesへ追加し、それ以外の型や欠損は拒否する
    data modify storage lib:text Component.Template.Check set value [{}]
    $data modify storage lib:text Component.Template.Check append from storage lib:text Component.Current.with[$(Index)]
    execute unless data storage lib:text Component.Template.Check[1] run return fail
    data modify storage lib:text Component.Template.Pieces append from storage lib:text Component.Template.Check[1]
    return 1
