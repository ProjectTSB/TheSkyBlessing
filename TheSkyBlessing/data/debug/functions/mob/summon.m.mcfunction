#> debug:mob/summon.m
#
# マクロで指定されたIDのMobを召喚します
#
# @input args:
#   ID : int
# @private
# @user

# マクロからIDを取得し召喚
    $data modify storage api: Argument.ID set value $(ID)
    function api:mob/summon
