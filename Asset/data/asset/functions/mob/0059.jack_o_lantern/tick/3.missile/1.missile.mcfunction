#> asset:mob/0059.jack_o_lantern/tick/3.missile/1.missile
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.skill_active



# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 1N.Tick
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
    execute if score $4tInterval Temporary matches 0 if score @s 1N.Tick matches ..80 run playsound minecraft:block.note_block.bit player @a[distance=..32] ~ ~ ~ 3 1.334840 1
# リセット
    scoreboard players reset $4tInterval

# プレイヤーに警告パーティクル
    execute if score @s 1N.Tick matches ..80 anchored eyes positioned ^ ^ ^ run function asset:mob/0059.jack_o_lantern/tick/3.missile/2.check
# プレイヤーを見る
    execute if score @s 1N.Tick matches ..80 run tp @s ~ ~ ~ facing entity @p[tag=!PlayerShouldInvulnerable]

# 突進
    execute if score @s 1N.Tick matches 81 anchored eyes positioned ^ ^ ^ run function asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle

# リセット
    execute if score @s 1N.Tick matches 100 run function asset:mob/0059.jack_o_lantern/tick/reset