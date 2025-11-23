#> debug:debug_privilege/
#
# 開発特権を付与します
#
# @private
# @user

execute if data storage global {IsProduction:0b} run tag @s add DevPrivilege