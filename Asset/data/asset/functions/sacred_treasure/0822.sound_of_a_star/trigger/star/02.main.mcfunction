#> asset:sacred_treasure/0822.sound_of_a_star/trigger/star/02.main
#
# 星の基本処理部
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/01.schedule

# スコア
    scoreboard players add @s MU.Time 1

# 演出
    execute as @a[distance=..32] facing entity @s eyes run function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/vfx

# 少しとどまってから発射 何個目かでズレ
    execute if entity @s[tag=!MU.2,tag=!MU.3] if score @s MU.Time matches 10.. run tp @s ^ ^ ^1
    execute if entity @s[tag=MU.2] if score @s MU.Time matches 15.. run tp @s ^ ^ ^1
    execute if entity @s[tag=MU.3] if score @s MU.Time matches 20.. run tp @s ^ ^ ^1

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] run function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/03.hit

# 壁の中、壁が目の前にあると消える
    execute unless block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/04.banish
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/04.banish

# 消滅
    execute if entity @s[tag=!MU.2,tag=!MU.3] if score @s MU.Time matches 50.. run kill @s
    execute if entity @s[tag=MU.2] if score @s MU.Time matches 55.. run kill @s
    execute if entity @s[tag=MU.3] if score @s MU.Time matches 60.. run kill @s


# スケジュールループ
    schedule function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/01.schedule 1t replace