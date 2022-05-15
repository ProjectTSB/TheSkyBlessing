#> asset:mob/0078.messenger_of_thunder/tick/teleport
#
#
#
# @within function
#   asset:mob/0078.messenger_of_thunder/tick/2.tick

# 演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 1 2 0

# ランダムでワープ
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    function lib:spread_entity/

# リセット
    data remove storage lib: Argument

# ワープのクールダウンを設定
    scoreboard players set @s 26.TPCool 30