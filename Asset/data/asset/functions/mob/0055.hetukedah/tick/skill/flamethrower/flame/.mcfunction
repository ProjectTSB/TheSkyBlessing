#> asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/

#> インターバルのスコアホルダー
# @private
# declare score_holder $DamageInterval

# パーティクル
    particle dust 1 0.5 0 0.5 ^ ^ ^0.5 0.1 0.1 0.1 0 2
    particle dust 1 0.5 0 0.5 ^ ^ ^ 0.1 0.1 0.1 0 2
    particle dust 1 0.5 0 0.5 ^ ^ ^-0.5 0.1 0.1 0.1 0 2
    particle flame ^ ^ ^ 0.1 0.1 0.1 0 1

# 実行時間を移す
    scoreboard players operation $DamageInterval Temporary = @s 1J.Tick

# 数Tickごとにダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/hit

# 再帰(ノーマル)
    execute unless predicate api:global_vars/difficulty/min/hard if entity @s[distance=..12] positioned ^ ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/

# 再帰(ハード、長い)
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[distance=..24] positioned ^ ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/