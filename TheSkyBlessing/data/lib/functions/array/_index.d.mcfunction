#> lib:array/_index.d
# @private

#> 共通スコアホルダー
# @within function lib:array/**
    #declare score_holder $Index
    #declare score_holder $ListSize
    #declare score_holder $Argument.Index

#> Picks処理用
# @within function
#   lib:array/picks
#   lib:array/core/picks
    #declare score_holder $Prev
    #declare score_holder $Cur

#> Compare処理用
# @within function lib:array/**compare*
#declare score_holder $Temp

#> 一部処理用
# @within function
#   lib:array/**sum
#   lib:array/**max
#   lib:array/**min
#declare score_holder $isNumeric

#> 算術処理用
# @within function
#   lib:array/**math/*
    #declare score_holder $Sum
    #declare score_holder $Max
    #declare score_holder $Min
    #declare score_holder $Mul
    #declare score_holder $Temp
    #declare score_holder $Temp2
