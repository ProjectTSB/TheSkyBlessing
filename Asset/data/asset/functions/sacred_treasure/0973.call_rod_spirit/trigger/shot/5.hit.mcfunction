#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.main_2

# ダメージ値設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~10の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $11 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 50
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"

# 演出
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 5

# マスターとして補正functionを実行
    execute at @a if score @s R1.UserID = @p UserID as @p run function lib:damage/modifier

# ダメージ実行
    execute as @e[tag=Enemy,tag=!Uninterferable,sort=nearest,limit=1] run function lib:damage/

# リセット
    function lib:damage/reset

# ショットを消す
    kill @e[type=snowball,distance=..0.5,sort=nearest,limit=1]
    kill @s
