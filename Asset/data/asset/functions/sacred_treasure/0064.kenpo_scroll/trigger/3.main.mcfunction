#> asset:sacred_treasure/0064.kenpo_scroll/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0064.kenpo_scroll/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 1 50 force @a[distance=..10]
    playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 2

# 10の軽減貫通ダメージを与える
    # 与えるダメージ = 28
        data modify storage lib: Argument.Damage set value 28f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 防御無視
        data modify storage lib: Argument.BypassResist set value true
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージを与える
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
    # リセット
        data remove storage lib: Argument

# リセット
    data remove storage lib: Argument