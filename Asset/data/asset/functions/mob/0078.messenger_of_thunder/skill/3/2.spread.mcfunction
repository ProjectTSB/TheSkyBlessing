#> asset:mob/0078.messenger_of_thunder/skill/3/2.spread
#
# ワープする
#
# @within function asset:mob/0078.messenger_of_thunder/skill/3/1

# 拡散と演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 0.5 2 0
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
    function lib:spread_entity/

# リセット
    data remove storage lib: Argument