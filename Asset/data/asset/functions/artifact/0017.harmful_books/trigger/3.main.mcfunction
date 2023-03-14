#> asset:artifact/0017.harmful_books/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0017.harmful_books/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run function asset:artifact/0017.harmful_books/trigger/3.1.add_effect

playsound minecraft:entity.witch.ambient player @a[distance=..10] ~ ~ ~ 1 1.2