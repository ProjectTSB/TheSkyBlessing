#> asset:artifact/common/_index.d
# @private

#> ReturnTag
# @within function
#   asset:artifact/*/*/2.check_condition
#   asset:artifact/*/*/2.check_condition/**
#   asset_manager:artifact/check/
#   asset:artifact/common/use/*
    #declare tag CanUsed

#> field_text の計算用
# @within function
#   asset:artifact/common/field_text.m
#   asset:artifact/common/field_text/trim_zero
    #declare score_holder $FieldText
    #declare score_holder $FieldTextFraction
    #declare score_holder $FieldTextDigit
