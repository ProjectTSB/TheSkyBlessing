#> debug:effect/give.m
#
# マクロで指定されたIDのEffectを付与します
#
# @input args:
#   ID : int
# @private
# @user

# マクロからIDを取得し召喚
    $data modify storage api: Argument.ID set value $(ID)
    function api:entity/mob/effect/give
