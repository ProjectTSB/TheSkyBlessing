#> player_manager:grave/tick/break
#
#
#
# @within function player_manager:grave/tick/

# サウンド
    playsound minecraft:entity.zombie.break_wooden_door neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.bell.use neutral @a ~ ~ ~ 1 1.5

# パーティクル
    particle block stone_bricks ~ ~0.5 ~ 0.3 0.3 0.3 0 25
    particle block smooth_stone ~ ~0.5 ~ 0.3 0.3 0.3 0 25


# セッション開ける
    function lib:array/session/open

# インベントリ取得 (ここで暗黙的に EntityStorage のポインタが GraveOwner を持つプレイヤーに向く)
    execute as @a[tag=GraveOwner,limit=1] run function api:data_get/inventory
    data modify storage lib: Array set from storage api: Inventory

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

# セッション閉じる
    function lib:array/session/close

# インベントリをもとに戻す
    data modify storage api: Argument.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems
    execute as @a[tag=GraveOwner,limit=1] run function api:inventory/set

# 壊す
    kill @s

# リセット
    data remove storage player_manager:grave IsOwnerTouchGrave
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems
