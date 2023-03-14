#> asset:artifact/0278.reveille/trigger/3.3.set_morning
#
# 朝にする
#
# @within function asset:artifact/0278.reveille/trigger/3.1.play_manager

# 朝にする
    time set day

# 音
    playsound ogg:random.levelup player @a ~ ~ ~ 1 1 1

# scoreリセット
    scoreboard players reset $Timeline 7Q.Timeline