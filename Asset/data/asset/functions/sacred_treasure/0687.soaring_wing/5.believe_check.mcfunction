#> asset:sacred_treasure/0687.soaring_wing/5.believe_check
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/4.equip_trigger

#> private
# @private
    #declare tag Believe.Flora
    #declare tag Believe.Urban
    #declare tag Believe.Nyaptov
    #declare tag Believe.Wi-ki
    #declare tag Believe.Rumor

# 信仰を検知 ...これいる？equip_triggerに一つにまとめといたほうがいい? でもこれがないと信仰なしでもフルセット使えちゃうから必要なんです
    execute unless entity @s[tag=!Believe.Flora,tag=!Believe.Wi-ki,tag=!Believe.Rumor] run function asset:sacred_treasure/0687.soaring_wing/6.equip
    execute unless entity @s[tag=!Believe.Nyaptov,tag=!Believe.Wi-ki] run tellraw @s {"text":"現在の信仰では使えないようだ...","color":"red"}