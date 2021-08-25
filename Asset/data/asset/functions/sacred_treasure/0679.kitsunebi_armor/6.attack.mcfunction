#> asset:sacred_treasure/0679.kitsunebi_armor/6.attack
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/5.attack_trigger

# 演出
    execute at @e[tag=Victim] run particle flame ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @e[tag=Victim,scores={IV.Kitsunebi=1..}] run particle soul_fire_flame ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @e[tag=Victim,scores={IV.Kitsunebi=1..}] run playsound block.fire.ambient master @a ~ ~ ~ 1 0.5 0.6

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
    execute as @e[type=#lib:living,tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 攻撃時狐火状態にする
    scoreboard players set @e[type=#lib:living,tag=Victim,scores={IV.Kitsunebi=1..}] IV.Kitsunebi2 100
    scoreboard players set @e[type=#lib:living,tag=Victim] IV.Kitsunebi 100

# 狐火状態のMob用Schedule
    schedule function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop 1t replace