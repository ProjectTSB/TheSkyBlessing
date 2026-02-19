#> api:data_get/recipe_book
#
# 対象のrecipeBookをstorageに軽量に取得します。
#
# @input as player
# @output storage api: recipeBook
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: recipeBook
    data modify storage api: recipeBook set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.recipeBook
