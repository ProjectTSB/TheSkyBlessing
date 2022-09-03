#> asset:mob/1015.divine_sword_purple/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1015.divine_sword_purple/tick/1.trigger

# まだ刺さっていない場合の動作
    execute if entity @s[tag=!S7.Landed] run function asset:mob/1015.divine_sword_purple/tick/3.unlanded

# 刺さった後の動作
    execute if entity @s[tag=S7.Landed] run function asset:mob/1015.divine_sword_purple/tick/5.tick_landed

# トゥルの技の終わりに反応して消える
    execute if entity @s[tag=S7.Death] run function asset:mob/1015.divine_sword_purple/tick/6.death
