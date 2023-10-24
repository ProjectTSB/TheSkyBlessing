#> asset:mob/0022.red_knight/tick/move/spread
#
# 拡散させる（拡散前に引数を設定）
#
# @within function asset:mob/0022.red_knight/tick/**

# 実行前に拡散値が設定されていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# タグをつける
    tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.1,sort=nearest,limit=1] add M.ArmorStandThis
# 拡散する
    execute at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function lib:spread_entity/
# プレイヤーを向く
    execute at @s run tp @s ~ ~ ~ facing entity @a[gamemode=!spectator,distance=..100,sort=nearest,limit=1]
# アマスタを持ってくる
    tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s

# タグを消す
    tag @e[type=armor_stand,tag=M.ArmorStandThis,distance=..100] remove M.ArmorStandThis