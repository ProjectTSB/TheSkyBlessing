#> debug:motion/xyz/.m
#
# 実行者を指定した方向に飛ばします（KB耐性で減衰しません）
#
# @input args
#   Vector : [double] @ 3
# @private
# @user

$data modify storage lib: Argument set value {Vector:$(Vector)}
function lib:motion/xyz
