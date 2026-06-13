#> debug:motion/looking/.m
#
# 実行者を実行したときの向きに飛ばします（KB耐性で減衰しません）
#
# @input args
#   Magnitude : double
# @private
# @user

$data modify storage lib: Argument set value {VectorMagnitude:$(Magnitude)}
function lib:motion/looking
