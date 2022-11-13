#> asset:mob/0235.orange_thrower/tick/3.summon_orange
#
# みかんをしょうかんするよ
#
# @within function asset:mob/0235.orange_thrower/tick/2.tick

#> Private
# @private
    #declare score_holder $Temp

# 5tick間隔で蜜柑を召喚
    scoreboard players operation $Temp Temporary = @s 6J.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run data modify storage api: Argument.ID set value 263
    execute if score $Temp Temporary matches 0 at @p[gamemode=!spectator,distance=..10] positioned ~ ~2.5 ~ run function api:mob/summon
    execute if score $Temp Temporary matches 0 at @p[gamemode=!spectator,distance=..10] positioned ~ ~2.5 ~ run playsound entity.item.pickup hostile @a ~ ~ ~ 0.5 1 0
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s 6J.Tick 1

# リセット
    execute if entity @s[scores={6J.Tick=30..}] run scoreboard players set @s 6J.Tick -50
