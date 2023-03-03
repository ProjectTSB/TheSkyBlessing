#> asset:artifact/0250.phoenix/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0250.phoenix/trigger/2.check_condition
#> private
# @private
    #declare tag Hit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    # 対象選定 + ダメージ増加判定
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run tag @s add Hit
        execute store result score @s Temporary run time query daytime

        # //ここから@sのTemporaryは強さ指数に変化(0..2)
        # //昼だったらTemporaryが1..12000)指数が1になる
        execute unless score @s Temporary matches 1..12000 run scoreboard players set @s Temporary 0
        execute if score @s Temporary matches 1..12000 run scoreboard players set @s Temporary 1
        # //天気が晴なら指数1増加
        execute if predicate lib:weather/is_sunny run scoreboard players add @s Temporary 1

    # 演出
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle flame ~ ~0.3 ~ 0.4 0.4 0.4 0 150 force @a
        execute if score @s Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 0.533 0 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
        execute if score @s Temporary matches 1 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 0 0 1 ~ ~-.3 ~ 0.4 0.4 0.4 0 100 force @a
        execute if score @s Temporary matches 2 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 0.969 0 1 1 ~ ~0.3 ~ 0.4 0.4 0.4 0 100 force @a
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1 1
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run playsound item.firecharge.use player @a[distance=..100] ~ ~ ~ 10 1 1
    # だめーーじ
        data merge storage lib: {Argument:{Damage:60.0f,AttackType:Magic,ElementType:Fire,FixedDamage:0b}}
        execute if score @s Temporary matches 1 run data modify storage lib: Argument.Damage set value 120.0f
        execute if score @s Temporary matches 2 run data modify storage lib: Argument.Damage set value 160.0f
        execute if score @s Temporary matches 3 run data modify storage lib: Argument.Damage set value 180.0f
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run function lib:damage/
        data modify entity @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] Fire set value 200s
    # リセット
        scoreboard players reset @s Temporary
        function lib:damage/reset
        tag @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] remove Hit