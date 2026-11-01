#> asset:artifact/common/field_text/trim_zero
#
# 小数部の末尾の 0 を削る
#
# @within function
#   asset:artifact/common/field_text.m
#   asset:artifact/common/field_text/trim_zero

    scoreboard players operation $FieldTextDigit Temporary = $FieldTextFraction Temporary
    scoreboard players operation $FieldTextDigit Temporary %= $10 Const
    execute unless score $FieldTextDigit Temporary matches 0 run return 0
    scoreboard players operation $FieldTextFraction Temporary /= $10 Const
    function asset:artifact/common/field_text/trim_zero
