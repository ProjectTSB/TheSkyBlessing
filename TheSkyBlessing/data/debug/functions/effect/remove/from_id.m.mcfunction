#> debug:effect/remove/from_id.m
#
# マクロで指定されたIDのEffectを削除します
#
# @input args:
#   Argument.ID : int
# @private
# @user

# マクロからIDを取得し削除
    $data modify storage api: Argument.ID set value $(ID)
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
