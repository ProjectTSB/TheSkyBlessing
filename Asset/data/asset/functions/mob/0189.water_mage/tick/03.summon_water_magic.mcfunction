#> asset:mob/0189.water_mage/tick/03.summon_water_magic
#
# ウォーターマジックを召喚
#
# @within function asset:mob/0189.water_mage/tick/2.tick

# ID設定
    data modify storage api: Argument.ID set value 214
# プレイヤーが4m以内にいる場合、足元に召喚
    execute if entity @p[gamemode=!spectator,distance=..4] at @p[gamemode=!spectator,distance=..4] run function api:mob/summon

# プレイヤーが4m以上離れている場合、そっちの方向に召喚
    execute if entity @p[gamemode=!spectator,distance=4..30] facing entity @p[gamemode=!spectator,distance=4..30] feet positioned ^ ^ ^7 run function api:mob/summon

# スコアリセット
    scoreboard players reset @s 59.Tick