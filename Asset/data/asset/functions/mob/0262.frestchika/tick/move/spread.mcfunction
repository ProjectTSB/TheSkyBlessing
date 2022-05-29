#> asset:mob/0262.frestchika/tick/move/spread
#
# 拡散してテレポートするやつ
#
# @within function asset:mob/0262.frestchika/tick/**

# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# タグをつける
    tag @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 7A.ArmorStandThis
# 拡散する
    execute at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function lib:spread_entity/
# アマスタを持ってくる
    tp @e[type=armor_stand,tag=7A.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..100] remove 7A.ArmorStandThis