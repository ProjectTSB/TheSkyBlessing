#> debug:motion/xyz/with_kb_resist.m
#
# 実行者を指定した方向に飛ばします（KB耐性で減衰します）
#
# @input args
#   Vector : [double] @ 3
# @private
# @user

$data modify storage lib: Argument set value {Vector:$(Vector),KnockbackResist:1b}
function lib:motion/xyz
