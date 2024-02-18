#> asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/tick

#> インターバルのスコアホルダー
# @private
# declare score_holder $SoundInterval

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s 1J.Tick

# 数Tickごとにサウンド
    scoreboard players operation $SoundInterval Temporary %= $6 Const
    execute if score $SoundInterval Temporary matches 0 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2

# 火を放つ
    execute anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/

# 手元のパーティクル
    execute anchored eyes positioned ^ ^-0.5 ^1 run particle smoke ~ ~ ~ 0.2 0.2 0.2 0.05 10

# 回転方向
    execute if entity @s[tag=1J.Turn.Left] run tp @s ~ ~ ~ ~-2.5 ~
    execute if entity @s[tag=1J.Turn.Right] run tp @s ~ ~ ~ ~2.5 ~
