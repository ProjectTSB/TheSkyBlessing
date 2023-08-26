#> asset:mob/0055.hetukedah/tick/skill/charge/move_forward
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/tick

#> インターバルのスコアホルダー
# @private
# declare score_holder $SoundInterval

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s 1J.Tick

# 数Tickごとにサウンド
    scoreboard players operation $SoundInterval Temporary %= $2 Const
    execute if score $SoundInterval Temporary matches 0 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score $SoundInterval Temporary matches 0 run playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1 2

# 演出
    execute positioned ~ ~1.6 ~ run particle minecraft:dust 1 1 0 1 ^ ^ ^ 0.5 0.5 0.5 0 15 force @a[distance=..30]
    execute positioned ~ ~1.6 ~ run particle minecraft:electric_spark ^ ^ ^ 0.5 0.5 0.5 0 15 force @a[distance=..30]

# ダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0055.hetukedah/tick/skill/charge/hit

# 壁があったら終了
    execute unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 1J.Tick 50

# 前に移動
    execute if block ^ ^ ^1 #lib:no_collision run tp @s ^ ^ ^1
