#> asset:mob/0099.witch_zombie/tick/3.magic
#
#
#
# @within function asset:mob/0099.witch_zombie/tick/2.tick

# このfunctionが実行される最初のTickに、乱数Predicateによる火か水かへの分岐
    execute if score @s 2R.Tick matches 100 if predicate lib:random_pass_per/50 run tag @s add 2R.Element

# 魔方陣を展開する間、自身に鈍化
    effect give @s slowness 1 6 true

# 2R.ElementTagが付与されない場合火属性、2R.ElementTagが付与された場合水属性
    execute if entity @s[tag=!2R.Element] positioned ~ ~3.5 ~ rotated ~ 90 run function asset:mob/0099.witch_zombie/tick/4.fire
    execute if entity @s[tag=2R.Element] positioned ~ ~3.5 ~ rotated ~ 90 run function asset:mob/0099.witch_zombie/tick/5.ice

# 魔方陣を展開して1秒後に魔法弾を発射
    scoreboard players add @s 2R.Shooting 1
    execute if score @s 2R.Shooting matches 20.. positioned ~ ~3.5 ~ run function asset:mob/0099.witch_zombie/tick/6.shooting_magic


