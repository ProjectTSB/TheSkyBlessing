#> lib:text/core/component/slice.m
# @within function lib:text/core/component/translate_next

# 原文のStart以上End未満をtextへ切り出し、Piecesへ追加する
    data modify storage lib:text Component.Template.Piece set value {}
    $data modify storage lib:text Component.Template.Piece.text set string storage lib:text Component.Template.Text $(Start) $(End)
    data modify storage lib:text Component.Template.Pieces append from storage lib:text Component.Template.Piece
