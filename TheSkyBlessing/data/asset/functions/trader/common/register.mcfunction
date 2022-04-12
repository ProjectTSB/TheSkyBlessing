#> asset:trader/common/register
#
#
#
# @within function asset:trader/*/register/register

# パラメータチェック
    execute unless data storage asset:trader ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
# 登録
    function asset_manager:trader/register/
# リセット
    data remove storage asset:trader ID
    data remove storage asset:trader Name
    data remove storage asset:trader Rotation
    data remove storage asset:trader Trades