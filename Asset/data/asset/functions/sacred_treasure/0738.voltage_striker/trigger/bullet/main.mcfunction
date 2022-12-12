#> asset:sacred_treasure/0738.voltage_striker/trigger/bullet/main
#
# 弾のメイン処理
#
# @within function asset:sacred_treasure/0738.voltage_striker/trigger/bullet/loop

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

# 定期的に追加で演出
    #scoreboard players operation $Temp Temporary = @s KI.Tick
   # scoreboard players operation $Temp Temporary %= $5 Const
   # execute unless entity @s[scores={KI.Tick=6..13}] if score $Temp Temporary matches 0 run function asset:sacred_treasure/0738.voltage_striker/trigger/bullet/vfx
   # scoreboard players reset $Temp Temporary

# tpする 6..13の間は停止する
    execute unless entity @s[scores={KI.Tick=6..13}] if block ^ ^ ^1 #lib:no_collision run tp @s ^ ^ ^1

# スコアが13の時に最寄りの敵のほうへ向きを変える
    execute if entity @s[scores={KI.Tick=13}] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] eyes
    execute if entity @s[scores={KI.Tick=13}] run particle firework ~ ~ ~ 0 0 0 0.2 10 normal @a
    execute if entity @s[scores={KI.Tick=13}] run playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.6 2 0

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0,limit=1] at @s run function asset:sacred_treasure/0738.voltage_striker/trigger/bullet/hit

# 向き変化後の壁ヒット判定
    execute if entity @s[scores={KI.Tick=14..}] positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0738.voltage_striker/trigger/bullet/hit

# 消滅
    execute if entity @s[scores={KI.Tick=50..}] run kill @s

# ループ
    execute if entity @s run schedule function asset:sacred_treasure/0738.voltage_striker/trigger/bullet/loop 1t replace