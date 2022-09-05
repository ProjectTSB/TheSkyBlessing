#> asset:mob/1016.divine_sword_red/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1016.divine_sword_red/tick/1.trigger

# tick加算
    scoreboard players add @s S8.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s S8.Tick

# しばらく浮いてる
    tag @s[scores={S8.Tick=20}] add S8.FallStart

# まだ刺さっていない場合の動作
    execute if entity @s[tag=S8.FallStart,tag=!S8.Landed] run function asset:mob/1016.divine_sword_red/tick/4.unlanded

# 刺さった後の動作
    execute if entity @s[tag=S8.Landed] run function asset:mob/1016.divine_sword_red/tick/7.tick_landed

# トゥルの技の終わりに反応して消える
    execute if entity @s[tag=S8.Death] run function asset:mob/1016.divine_sword_red/tick/10.death

# スコアリセット
    scoreboard players reset $Interval Temporary