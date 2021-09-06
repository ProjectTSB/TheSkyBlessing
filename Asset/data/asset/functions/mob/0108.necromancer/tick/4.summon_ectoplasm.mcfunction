#> asset:mob/0108.necromancer/tick/4.summon_ectoplasm
#
#
#
# @within function asset:mob/0108.necromancer/tick/3.summon_and_shoot

# エクトプラズム召喚
    data modify storage api: Argument.ID set value 7
    execute positioned ~ ~1.2 ~ run function api:mob/summon

# カウントスコアをリセット
    scoreboard players reset @s 30.WaitSummon