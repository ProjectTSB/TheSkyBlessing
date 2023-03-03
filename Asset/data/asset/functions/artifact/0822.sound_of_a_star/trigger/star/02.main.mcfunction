#> asset:artifact/0822.sound_of_a_star/trigger/star/02.main
#
# 星の基本処理部
#
# @within function asset:artifact/0822.sound_of_a_star/trigger/star/01.schedule

# スコア
    scoreboard players add @s MU.Time 1

# 演出
    execute as @a[distance=..32] facing entity @s eyes run function asset:artifact/0822.sound_of_a_star/trigger/star/vfx

# 少しとどまってから発射
    execute if entity @s[scores={MU.Time=10..}] run tp @s ^ ^ ^1

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] run function asset:artifact/0822.sound_of_a_star/trigger/star/03.hit

# 壁の中、壁が目の前にあると消える
    execute unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0822.sound_of_a_star/trigger/star/04.banish
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:artifact/0822.sound_of_a_star/trigger/star/04.banish

# 消滅
    execute if entity @s[scores={MU.Time=50..}] run kill @s

# スケジュールループ
    schedule function asset:artifact/0822.sound_of_a_star/trigger/star/01.schedule 1t replace