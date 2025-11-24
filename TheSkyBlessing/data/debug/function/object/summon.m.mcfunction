#> debug:object/summon.m
#
# マクロで指定されたIDのObjectを召喚します
#
# @input args:
#   ID : int
# @private
# @user

# マクロからIDを取得し召喚
    $data modify storage api: Argument.ID set value $(ID)
    function api:object/summon
