#> asset:mob/0274.death_saw_jiki/tick/3.damage
#
#
#
# @within function asset:mob/0274.death_saw_jiki/tick/2.tick

# 演出
    particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    playsound block.lava.extinguish hostile @a ~ ~ ~ 2 1 0

# 属性ダメージ
   # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.4f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # プレイヤー対象に
        execute as @e[type=#lib:living,gamemode=!spectator,gamemode=!creative,tag=Friend,distance=..1] run function lib:damage/
    # リセット
        data remove storage lib: Argument

# クールタイムを与える
    scoreboard players set @s 7M.CoolTime 20