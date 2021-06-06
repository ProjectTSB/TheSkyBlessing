#> asset_manager:common/reset_all_context
#
# すべてのcontextを削除します
#
# @within function core:tick/

data remove storage asset:context New
data remove storage asset:context Old
data remove storage asset:context id
data remove storage asset:context Items
data remove storage asset:context Inventory