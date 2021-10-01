#> asset:sacred_treasure/0679.kitsunebi_armor/6.melee
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/5.melee_trigger

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run particle flame ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run particle soul_fire_flame ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound block.fire.ambient master @a ~ ~ ~ 1 0.5 0.6

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 攻撃時狐火状態用Tagを付与する
    tag @e[type=#lib:living,tag=Victim,distance=..6] add IV.Kitunebi

# 鈍足を付与
    effect give @e[type=#lib:living,type=!player,tag=Victim,tag=Uninterferable,distance=..6] slowness 10 0

# 狐火状態のMob用Schedule
    schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace
