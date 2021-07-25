#> asset:mob/0060.self_destructor/tick/self-desruct
#
#
#
# @within function asset:mob/0060.self_destructor/tick/2.tick

particle explosion ~ ~ ~ 5 5 5 1 140 normal @a
particle flame ~ ~ ~ 5 5 5 0 140 normal @a
playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 2 1.2 1
playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 2 0.6 1

  # 火属性ダメージ
    # 与えるダメージ
   data modify storage lib: Argument.Damage set value 16
    # 第一属性
   data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
   data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
   execute if score @s 1O.ExploOrder matches 40 run function lib:damage/modifier
    # 範囲5m以内のゾンビを対象に
   execute as @a[distance=..7.5] run function lib:damage/
    # リセット
   data remove storage lib: Argument

   execute as @e[type=zombie,scores={MobID=},distance=..10] run tag @s add 1O

  # 消滅
      tp @s ~ 0 ~
      kill @s