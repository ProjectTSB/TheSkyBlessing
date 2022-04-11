#> asset:mob/0078.messenger_of_thunder/skill/3/2.spread
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/skill/3/1

# 拡散と演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={26.Tick=..15}] run data modify storage lib: Argument.Bounds set value [[7d,7d],[0],[7d,7d]]
    execute if entity @s[scores={26.Tick=16..}] run data modify storage lib: Argument.Bounds set value [[10d,10d],[0],[10d,10d]]
    function lib:spread_entity/

# リセット
    data remove storage lib: Argument