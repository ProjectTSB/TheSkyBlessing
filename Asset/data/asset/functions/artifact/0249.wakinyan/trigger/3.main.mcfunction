#> asset:artifact/0249.wakinyan/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0249.wakinyan/trigger/2.check_condition
#> private
# @private
    #declare tag Hit

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    # 対象選定 + クリティカル判定(周囲が水か)
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run tag @s add Hit
        # //ここで相手の周囲の水の量を@sのTemporaryにstore
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] store result score @s Temporary run clone ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 filtered water force

        # //ここから@sのTemporaryは強さ指数に変化(0..3)
        # //相手が水に浸かってたら(Temporaryが1..)指数が1に変更
        execute if score @s Temporary matches 1.. run scoreboard players set @s Temporary 1
        # //天気が雨だったら指数1追加
        execute unless predicate lib:weather/is_sunny run scoreboard players add @s Temporary 1
        # //天気が雷だったら更に1追加
        execute if predicate lib:weather/is_thundering run scoreboard players add @s Temporary 1

    # 演出
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 0 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
        execute if score @s Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 1 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
        execute if score @s Temporary matches 1 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 0.6 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
        execute if score @s Temporary matches 2 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 0 0 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
        execute if score @s Temporary matches 3 at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run particle dust 1 0 1 1 ~ ~4 ~ 0.01 4.5 0.01 0 100 force @a
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 3 2 0
        execute at @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run playsound entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 3 2 0
        # execute at @e[type=#lib:living,tag=Hit,distance=..100,limit=1] run summon lightning_bolt ~ ~ ~ {damage:0.001d,CustomName:'[{"text": "雷鳥の囃子","color":"yellow"}]'}
    # だめーーじ
        data merge storage lib: {Argument:{Damage:60.0f,AttackType:Magic,ElementType:Thunder,FixedDamage:0b}}
        execute if score @s Temporary matches 1 run data modify storage lib: Argument.Damage set value 120.0f
        execute if score @s Temporary matches 2 run data modify storage lib: Argument.Damage set value 180.0f
        execute if score @s Temporary matches 3 run data modify storage lib: Argument.Damage set value 240.0f
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] run function lib:damage/
    # リセット
        scoreboard players reset @s Temporary
        function lib:damage/reset
        tag @e[type=#lib:living,type=!player,tag=Victim,tag=Hit,distance=..100,limit=1] remove Hit