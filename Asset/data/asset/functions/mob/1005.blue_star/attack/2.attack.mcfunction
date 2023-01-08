#> asset:mob/1005.blue_star/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/1005.blue_star/attack/1.trigger

# 効果
    effect give @a[tag=Victim,distance=..30] slowness 5 2

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim,distance=..30] run function lib:damage/
# リセット
    function lib:damage/reset

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,2,1005,0]
    # 補正値
        data modify storage api: Argument.Amount set value -1
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    execute as @a[tag=Victim,distance=..30] run function api:modifier/mp_regen/add

# スコアを与える
    scoreboard players add @a[tag=Victim,distance=..30] RX.Time 40
# Schedulelooopするやつ
    schedule function asset:mob/1005.blue_star/attack/3.scheduleloop 1t replace