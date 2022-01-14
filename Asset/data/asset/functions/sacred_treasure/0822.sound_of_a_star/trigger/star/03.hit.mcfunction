#> asset:sacred_treasure/0822.sound_of_a_star/trigger/star/03.hit
#
# ヒット処理
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/02.main

# 演出
    playsound block.beacon.deactivate player @a ~ ~ ~ 0.8 0.8 0
    particle dust 0 1 1 1 ~ ~ ~ 0.4 0.4 0.4 0 30 normal @a

# ダメージ設定
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 消える
    kill @s