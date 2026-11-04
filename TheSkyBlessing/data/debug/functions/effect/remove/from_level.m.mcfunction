#> debug:effect/remove/from_level.m
#
# マクロで指定されたレベルのEffectを削除します
#
# @input args:
#   Argument.ClearLv : int
#   Argument.ClearType : int
#   Argument.ClearCount : int
# @private
# @user

# マクロからIDを取得し削除
    $data modify storage api: Argument set value $(Argument)
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
