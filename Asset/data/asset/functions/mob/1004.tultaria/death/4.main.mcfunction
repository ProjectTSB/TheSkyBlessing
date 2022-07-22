#> asset:mob/1004.tultaria/death/4.main
#
# 仮の死亡演出 その2
#
# @within function asset:mob/1004.tultaria/death/3.death_tick

# スコア加算
    scoreboard players add @s RW.Tick 1

# 下がっていく
    execute if score @s RW.Tick matches ..9 run tp @s ^ ^ ^-0.05
    execute if score @s RW.Tick matches 10..39 run tp @s ^ ^ ^-0.02
    execute if score @s RW.Tick matches 40..79 run tp @s ^ ^ ^-0.01
    execute if score @s RW.Tick matches 80..120 run tp @s ^ ^ ^-0.007

# パーティクル
    execute if predicate lib:random_pass_per/50 run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]
    execute if predicate lib:random_pass_per/30 run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]

# 爆発
    scoreboard players add @s RW.DeathExplode 1

# 爆発(最初のほう)
    execute if entity @s[scores={RW.Tick=40..79,RW.DeathExplode=10}] run function asset:mob/1004.tultaria/death/explosion
    execute if entity @s[scores={RW.Tick=40..79}] run scoreboard players reset @s[scores={RW.DeathExplode=10..}] RW.DeathExplode

# 爆発(後のほう)
    execute if entity @s[scores={RW.Tick=80..139,RW.DeathExplode=5}] run function asset:mob/1004.tultaria/death/explosion
    execute if entity @s[scores={RW.Tick=80..139}] run scoreboard players reset @s[scores={RW.DeathExplode=5..}] RW.DeathExplode

# 爆発(後のほう)
    execute if entity @s[scores={RW.Tick=140}] run playsound minecraft:block.portal.trigger hostile @a ~ ~ ~ 4 1.5
    execute if entity @s[scores={RW.Tick=140..180,RW.DeathExplode=2}] run function asset:mob/1004.tultaria/death/explosion
    execute if entity @s[scores={RW.Tick=140..180}] run scoreboard players reset @s[scores={RW.DeathExplode=2..}] RW.DeathExplode

# シメの大爆発
    execute if score @s RW.Tick matches 200 run function asset:mob/1004.tultaria/death/explosion_final