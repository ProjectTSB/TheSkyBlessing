#> asset:artifact/common/field_text/set.m
# @input args
#   Path : string
#   Sign : string ("" か "-")
#   Integer : int
#   Dot : string ("." か "")
#   Fraction : string (末尾の 0 を削った小数部)
# @within function asset:artifact/common/field_text.m

    $data modify storage asset:artifact FieldText.$(Path) set value "$(Sign)$(Integer)$(Dot)$(Fraction)"
