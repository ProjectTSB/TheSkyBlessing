#> debug:motion/looking/with_kb_resist.m
#
# 実行者を実行したときの向きに飛ばします（KB耐性で減衰します）
#
# @input args
#   Magnitude : double
# @private
# @user

$data modify storage lib: Argument set value {VectorMagnitude:$(Magnitude),KnockbackResist:1b}
function lib:motion/looking
