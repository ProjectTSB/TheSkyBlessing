#> asset:mob/0151.recombined/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0151.recombined/attack/1.trigger

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 25f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 0.3 1.6
    playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 0.4 2

# 腕を振る
    item replace entity @s weapon with iron_axe

# プレイヤーの防具力を下げる(40)
    attribute @p[tag=Victim] minecraft:generic.armor modifier add 1-0-2-0-9700000000 "1-2-151-0" -0.4 multiply

# タグを付与
    tag @p[tag=Victim] add 25.DefDown
# スコアを付与
    scoreboard players set @p[tag=Victim] 47.DefDownTime 60

# Scheduleを発動
    schedule function asset:mob/0151.recombined/attack/3.scheduleloop 1t