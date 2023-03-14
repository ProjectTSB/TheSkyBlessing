#> asset:artifact/0738.voltage_striker/trigger/bullet/main
#
# 弾のメイン処理
#
# @within function asset:artifact/0738.voltage_striker/trigger/bullet/loop

#> Private
# @private
    #declare score_holder $Temp

# スコア
    scoreboard players add @s KI.Tick 1

# 演出
    particle dust 5 20000000 3 1 ~ ~ ~ 0 0 0 0 1
    particle dust 5 20000000 3 1 ^ ^ ^0.25 0 0 0 0 1
    particle dust 5 20000000 3 1 ^ ^ ^0.5 0 0 0 0 1
    particle dust 5 20000000 3 1 ^ ^ ^0.75 0 0 0 0 1

# tpする 6..13の間は停止する
    execute unless entity @s[scores={KI.Tick=6..13}] if block ^ ^ ^1 #lib:no_collision run tp @s ^ ^ ^1

# スコアが13の時に最寄りの敵のほうへ向きを変える
    execute if entity @s[scores={KI.Tick=13}] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,distance=..20,sort=nearest,limit=1] eyes
    execute if entity @s[scores={KI.Tick=13}] run particle firework ~ ~ ~ 0 0 0 0.2 10 normal @a
    execute if entity @s[scores={KI.Tick=13}] run playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.6 2 0

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0,limit=1] at @s run function asset:artifact/0738.voltage_striker/trigger/bullet/hit

# 向き変化後の壁ヒット判定
    execute if entity @s[scores={KI.Tick=14..}] positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0738.voltage_striker/trigger/bullet/hit

# 消滅
    execute if entity @s[scores={KI.Tick=30..}] run kill @s

# ループ
    execute if entity @s run schedule function asset:artifact/0738.voltage_striker/trigger/bullet/loop 1t replace