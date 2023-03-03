#> asset:artifact/0953.meteor_rain/trigger/5.emitter_main
#
#
#
# @within function asset:artifact/0953.meteor_rain/trigger/4.emitter_tick

# スコア加算
    scoreboard players add @s QH.Tick 1

# メテオ降らす
    execute if score @s QH.Tick matches 10.. run function asset:artifact/0953.meteor_rain/trigger/6.summon_meteor

# ここは熱いですよ感を出す
    particle lava ~ ~ ~ 10 10 10 0 1
