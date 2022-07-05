#> asset:mob/0216.gray_guardian/tick/move/spread
#
# 拡散させる（拡散前に引数を設定）
#
# @within function asset:mob/0216.gray_guardian/tick/**

# 実行前に拡散値が設定されていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# タグをつける
    tag @e[type=armor_stand,tag=60.ArmorStand,distance=..0.1,sort=nearest,limit=1] add 60.ArmorStandThis
# 拡散する
    execute at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function lib:spread_entity/
# アマスタを持ってくる
    tp @e[type=armor_stand,tag=60.ArmorStandThis,sort=nearest,limit=1] @s

# タグを消す
    tag @e[type=armor_stand,tag=60.ArmorStandThis,distance=..100] remove 60.ArmorStandThis