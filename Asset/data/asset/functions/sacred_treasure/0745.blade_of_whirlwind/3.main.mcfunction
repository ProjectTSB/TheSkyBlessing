#> asset:sacred_treasure/0745.blade_of_whirlwind/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0745.blade_of_whirlwind/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:sacred_treasure/0745.blade_of_whirlwind/4.vfx

# 移動速度をスコア化する
    execute store result score $AddDamage Temporary run attribute @s generic.movement_speed get 1000
    scoreboard players operation $VectorMagnitude Lib = $AddDamage Temporary

# 本来の補正一切なしの値を減算
    scoreboard players operation $AddDamage Temporary -= $100 Const

# attributeの補正の値×250だけダメージに加算されるので、1000×5÷20=250、より5を掛け、20で割るので結果的に4で割る
    scoreboard players operation $AddDamage Temporary /= $4 Const

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~14の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $14 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 41
        # 移動速度の追加分を加算
            scoreboard players operation $RandomDamage Temporary += $AddDamage Temporary
    #ダメージを代入
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"

# 補正functionを実行
    function lib:damage/modifier
# ダメージ
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function lib:damage/

# Mobのノクバ耐性を100倍で取得 天使だったら実行しない
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=!Enemy.Boss,distance=..6,limit=1] store result score $MobKnockbackResist Temporary run attribute @e[type=#lib:living,type=!player,tag=Victim,distance=..6,limit=1] generic.knockback_resistance get 100

# ノクバ耐性が1.0でないなら実行
    execute if score $MobKnockbackResist Temporary matches 0..99 run function asset:sacred_treasure/0745.blade_of_whirlwind/5.knockback

# リセット
    data remove storage lib: Argument
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $VectorMagnitude Lib
    scoreboard players reset $MobKnockbackResist Temporary
    scoreboard players reset $AddDamage Temporary