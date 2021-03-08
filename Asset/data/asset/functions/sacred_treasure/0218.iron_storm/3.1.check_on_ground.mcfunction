#> asset:sacred_treasure/0218.iron_storm/3.1.check_on_ground
#
# アイアンゴーレムが着地したかどうか確認
#
# @within function
#   asset:sacred_treasure/0218.iron_storm/3.main
#   asset:sacred_treasure/0218.iron_storm/3.1.check_on_ground

# 着地しているなら爆風処理
    execute as @e[type=iron_golem,tag=DA.InAir] at @s unless block ~ ~-1 ~ #lib:no_collision run function asset:sacred_treasure/0218.iron_storm/3.2.blast

# 着地していないなら速度代入
    execute as @e[type=iron_golem,tag=DA.InAir] at @s if entity @s[y=257,dy=256] run function asset:sacred_treasure/0218.iron_storm/3.3.velocity
    execute as @e[type=iron_golem,tag=DA.InAir] at @s if entity @s[y=256,dy=-256] if block ~ ~-1 ~ #lib:no_collision run function asset:sacred_treasure/0218.iron_storm/3.3.velocity

# 次tickのmanager実行予約
    execute if entity @e[type=iron_golem,tag=DA.InAir] run schedule function asset:sacred_treasure/0218.iron_storm/3.1.check_on_ground 1t replace
