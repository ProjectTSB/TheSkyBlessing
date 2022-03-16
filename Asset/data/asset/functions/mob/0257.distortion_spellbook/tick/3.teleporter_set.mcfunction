#> asset:mob/0257.distortion_spellbook/tick/3.teleporter_set
#
#
#
# @within function asset:mob/0257.distortion_spellbook/tick/2.tick

# プレイヤー位置にテレポーター召喚
    data modify storage api: Argument.ID set value 258
    execute at @p[gamemode=!spectator,distance=..20] run function api:mob/summon


# スコア戻す
    scoreboard players set @s 75.CoolTime 0