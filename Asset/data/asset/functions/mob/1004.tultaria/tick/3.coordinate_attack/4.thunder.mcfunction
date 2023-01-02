#> asset:mob/1004.tultaria/tick/3.coordinate_attack/4.thunder
#
# 拡散する雷のparticleの準備
#
# @within function asset:mob/1004.tultaria/tick/3.coordinate_attack/1.coordinate_attack

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[4d,5d],[0],[4d,5d]]
    execute as @e[type=marker,tag=RW.This,distance=..100] at @s run function lib:spread_entity/

# マーカーにparticleを放つ
    execute at @e[type=marker,tag=RW.This,distance=..100] run function asset:mob/1004.tultaria/tick/3.coordinate_attack/5.vfx

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute at @e[type=marker,tag=RW.This,distance=..100] as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @e[type=marker,tag=RW.This,distance=..100]
