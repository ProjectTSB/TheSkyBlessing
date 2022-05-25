#> asset:mob/0219.aorta/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0219.aorta/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 0.769 0 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound block.conduit.ambient hostile @a ~ ~ ~ 0.8 1.5 0

# 自身を回復
    data modify storage lib: Argument.Heal set value 500f
    function lib:heal/modifier
    function lib:heal/
# リセット
    data remove storage lib: Argument

# 周囲に移動速度上昇を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5] speed 3 1 true