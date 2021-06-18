#> asset:mob/0038.laser_eye/tick/2.4.attack2
#
# ビームを撃っちゃう
#
# @within function asset:mob/0038.laser_eye/tick/2.1.attack

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 4.0
    data modify storage lib: Argument.Spread set value 0.8

# 前方拡散を実行する
    function lib:forward_spreader/circle

# 発砲
    execute facing entity 0-0-0-0-0 feet anchored eyes positioned ^ ^ ^ run function asset:mob/0038.laser_eye/tick/2.2.shoot

# 演出
    playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 2
    stopsound @a master minecraft:block.beacon.ambient

# タグ消し
    tag @s remove Landing
    tag @s remove C.Charge
    scoreboard players reset @s C.LaserTime