#> player_manager:grave/tick/break
#
#
#
# @within function player_manager:grave/tick/

# セッション開ける
    execute as @a if score @s UserID = $UserID Temporary run function lib:array/session/open

# 取得
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems

# 一回目
    function lib:array/packing_chest
    data modify block 10000 0 10000 Items set from storage lib: Package
    loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick

# リセット
    data remove storage lib: Package

# 二回目
    function lib:array/packing_chest
    data modify block 10000 0 10000 Items set from storage lib: Package
    loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick

# ばら撒いたときのモーションを無くす
    execute as @e[type=item,distance=..0.5] run function player_manager:grave/tick/stop_motion
# 壊す
    kill @s

# リセット
    function lib:array/session/close
    data remove storage player_manager:grave IsGraveNearOwner
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems
