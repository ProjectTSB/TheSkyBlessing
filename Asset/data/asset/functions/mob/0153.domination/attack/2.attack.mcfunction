#> asset:mob/0153.domination/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0153.domination/attack/1.trigger

# 演出
    execute at @a[tag=Victim] run playsound block.anvil.land hostile @a ~ ~ ~ 1 1.3

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 33f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset

# プレイヤーをパニック状態にする
# プレイヤーにタグ、スコアを付与する
    tag @p[tag=Victim] add 49.Panic
    scoreboard players set @p[tag=Victim] 49.PanicTime 50
# Scheduleループをする
    schedule function asset:mob/0153.domination/attack/3.scheduleloop 1t