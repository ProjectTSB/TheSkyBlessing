#> asset:mob/0059.jack_o_lantern/tick/4.wait_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/3.glowing


# ワープ
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.633
    execute at @p[gamemode=!creative,gamemode=!spectator] positioned ~ ~6 ~ rotated ~ 90 run function lib:forward_spreader/circle
    execute at @p[gamemode=!creative,gamemode=!spectator] positioned ~ ~6 ~ facing entity 0-0-0-0-0 feet positioned ^ ^ ^6 if block ~ ~ ~ #asset:mob/0059.jack_o_lantern/no_collision unless block ~ ~-1 ~ #asset:mob/0059.jack_o_lantern/no_collision run tp @s ~ ~ ~
# ワープミスによる特殊攻撃割愛
    execute at @p[gamemode=!creative,gamemode=!spectator] positioned ~ ~6 ~ facing entity 0-0-0-0-0 feet positioned ^ ^ ^6 unless block ~ ~ ~ #asset:mob/0059.jack_o_lantern/no_collision run scoreboard players set @s 1N.Glowing 40
# 特殊攻撃開始演出
    particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a
    playsound entity.witch.celebrate master @a ~ ~ ~ 0.8 1.5 0
    effect give @s slowness 2 5 true
    effect give @s weakness 2 10 true

# カボチャを外す
    replaceitem entity @s armor.head air
