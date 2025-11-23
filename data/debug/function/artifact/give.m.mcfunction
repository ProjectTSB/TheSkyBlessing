#> debug:artifact/give.m
#
# マクロで指定されたIDのを神器をgiveします
#
# @input args:
#   ID : int
# @private
# @user

# マクロからIDを取得しgive
    $data modify storage api: Argument.ID set value $(ID)
    function api:artifact/give/from_id
