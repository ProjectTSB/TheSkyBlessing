#> asset:mob/1018.hellflame_skull/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1018.hellflame_skull/tick/1.trigger

#> private
# @private
    #declare score_holder $SoundInterval

# Tick加算
    scoreboard players add @s SA.Tick 1

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s SA.Tick

# スコアによって速度が変わる、最高速のときはダメージを受けても止まらない
    execute facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.1 ~ ~

    particle dust 0.761 0.267 0 1 ~ ~1.5 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]
    particle dust 0.792 0 0 1 ~ ~1.5 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]

# 接地で上を向く
    execute positioned ~ ~1.5 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1.5 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 近くにプレイヤーがいるなら、10tickごとにサウンド
    scoreboard players operation $SoundInterval Temporary %= $61 Const
    execute if entity @p[distance=..3] if score $SoundInterval Temporary matches 0 run function asset:mob/1018.hellflame_skull/tick/event/sound

# クールタイム中じゃないなら接触時に攻撃
   # execute if entity @s[scores={SA.MoveTime=..59}] unless score @s SA.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[gamemode=!creative,gamemode=!spectator,dx=0] run function asset:mob/0204_infernal_watcher/tick/event/attack

# カベにぶつかった際の処理
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s SA.LifeTime 1
    execute if score @s SA.LifeTime matches ..0 run kill @s