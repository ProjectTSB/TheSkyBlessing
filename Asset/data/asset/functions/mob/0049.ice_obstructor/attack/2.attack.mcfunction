#> asset:mob/0049.ice_obstructor/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0049.ice_obstructor/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle minecraft:falling_dust diamond_block ~ ~1.75 ~ 0.4 0.4 0.4 1 15
    execute at @p[tag=Victim] run playsound minecraft:block.glass.break master @p ~ ~ ~ 1.4 1.3 0

# デバフ
    effect give @p[tag=Victim] slowness 3 2 true
    effect give @p[tag=Victim] weakness 3 2 true
    effect give @p[tag=Victim] mining_fatigue 3 2 true

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute at @p[tag=Victim] as @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] run function lib:damage/

# 粉雪を設置
    execute at @p[tag=Victim] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air
# リセット
    data remove storage lib: Argument