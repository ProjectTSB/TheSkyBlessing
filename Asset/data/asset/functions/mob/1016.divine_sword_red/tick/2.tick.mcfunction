#> asset:mob/1016.divine_sword_red/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1016.divine_sword_red/tick/1.trigger

# tick加算
    scoreboard players add @s S8.Tick 1

# 実行時間を移す
    scoreboard players operation $ParticleInterval Temporary = @s S8.Tick
    scoreboard players operation $DamageInterval Temporary = @s S8.Tick

# しばらく浮いてる
    tag @s[scores={S8.Tick=20}] add S8.FallStart

# 刺さった後の動作
    execute if entity @s[tag=S8.Landed] run function asset:mob/1016.divine_sword_red/tick/7.tick_landed

# まだ刺さっていない場合の動作
    execute if entity @s[tag=S8.FallStart,tag=!S8.Landed] run function asset:mob/1016.divine_sword_red/tick/4.unlanded

# トゥルの技の終わりに反応して消える
    execute if entity @s[tag=S8.Death] run function asset:mob/1016.divine_sword_red/tick/10.death

# スコアリセット
    scoreboard players reset $ParticleInterval Temporary
    scoreboard players reset $DamageInterval Temporary