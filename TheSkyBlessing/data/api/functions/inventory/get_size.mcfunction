#> api:inventory/get_size
#
# 実行者の防具スロット/オフハンドを除くインベントリのサイズを取得します
#
# @output score $InvSize Lib
# @api

#> Inv
# @private
#declare score_holder $InvSize

function api:data_get/inventory
execute store result score $InvSize Lib if data storage api: Inventory[]
execute if data storage api: Inventory[{Slot:100b}] run scoreboard players remove $InvSize Lib 1
execute if data storage api: Inventory[{Slot:101b}] run scoreboard players remove $InvSize Lib 1
execute if data storage api: Inventory[{Slot:102b}] run scoreboard players remove $InvSize Lib 1
execute if data storage api: Inventory[{Slot:103b}] run scoreboard players remove $InvSize Lib 1
execute if data storage api: Inventory[{Slot:-106b}] run scoreboard players remove $InvSize Lib 1