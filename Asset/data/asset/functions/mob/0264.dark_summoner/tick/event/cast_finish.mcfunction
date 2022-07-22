#> asset:mob/0264.dark_summoner/tick/event/cast_finish
#
#
#
# @within function
#   asset:mob/0264.dark_summoner/tick/event/casting
#   asset:mob/0264.dark_summoner/tick/2.tick

# リセット
    scoreboard players reset @s 7C.Attack
    tag @s remove 7C.CastStart

# ポーズ変更
    item replace entity @s armor.head with stick{CustomModelData:20214}
