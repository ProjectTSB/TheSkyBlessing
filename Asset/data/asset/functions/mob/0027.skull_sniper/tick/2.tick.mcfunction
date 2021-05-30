#> asset:mob/0027.skull_sniper/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0027.skull_sniper/tick/1.trigger

# 発泡後は正数になるまでスコアを増やす。
    execute positioned ^ ^ ^30 unless entity @p[gamemode=!spectator,distance=..30] run scoreboard players add @s[scores={R.Attackcool=..0}] R.Attackcool 1
# 視点先にプレイヤーがいたらスコアを増やす
    execute positioned ^ ^ ^30 if entity @p[gamemode=!spectator,distance=..30] run scoreboard players add @s R.Attackcool 1
# プレイヤーに警告を吐く
    execute if entity @s[scores={R.Attackcool=1..}] positioned ^ ^ ^30 if entity @p[gamemode=!spectator,distance=..30] positioned ^ ^ ^-30 positioned ~ ~1.5 ~0 facing entity @p[gamemode=!spectator,distance=..30] eyes run function asset:mob/0027.skull_sniper/tick/2.3.check
# 視点先にいない場合諦める
    execute positioned ^ ^ ^30 unless entity @p[gamemode=!spectator,distance=..30] run scoreboard players reset @s[scores={R.Attackcool=1..}] R.Attackcool

# 発泡処理
    execute if score @s R.Attackcool matches 90 positioned ~ ~1.5 ~ facing entity @p[gamemode=!spectator,distance=..30] eyes run function asset:mob/0027.skull_sniper/tick/2.1.shot
    tag @s[tag=Landing,scores={R.Attackcool=90}] remove Landing
    scoreboard players set @s[scores={R.Attackcool=90}] R.Attackcool -80