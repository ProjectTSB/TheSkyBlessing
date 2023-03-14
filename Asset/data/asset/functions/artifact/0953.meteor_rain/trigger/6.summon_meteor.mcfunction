#> asset:artifact/0953.meteor_rain/trigger/6.summon_meteor
#
# メテオ召喚関数をまとめて実行する
#
# @within function asset:artifact/0953.meteor_rain/trigger/5.emitter_main

# サウンド
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 3 1

# 召喚部分
    execute positioned ~ ~40 ~ run function asset:artifact/0953.meteor_rain/trigger/7.cast_meteor
    execute positioned ~ ~40 ~ run function asset:artifact/0953.meteor_rain/trigger/7.cast_meteor
    execute positioned ~ ~40 ~ run function asset:artifact/0953.meteor_rain/trigger/7.cast_meteor

# カウントが増える
    scoreboard players add @s QH.MeteorCastedCount 1

# リセット
    scoreboard players reset @s QH.Tick
