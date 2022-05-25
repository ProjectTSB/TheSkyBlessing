#> asset:mob/1008.yellow_star/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/1008.yellow_star/attack/1.trigger

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim,distance=..30] run function lib:damage/
# リセット
    function lib:damage/reset

# プレイヤーの防具力を下げる(40)
    attribute @p[tag=Victim] minecraft:generic.armor modifier add 1-0-2-0-3f000000000 "1-2-1008-0" -0.4 multiply

# スコア設定
    scoreboard players set @p[tag=Victim] S0.Time 100

# Scheduleする
    schedule function asset:mob/1008.yellow_star/attack/3.scheduleloop 1t replace