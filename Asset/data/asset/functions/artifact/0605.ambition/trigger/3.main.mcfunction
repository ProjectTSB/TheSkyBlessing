#> asset:artifact/0605.ambition/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0605.ambition/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 没収されたアイテムの個数を取得
    execute store result score @s Temporary run function api:lost_items/get_length

# 没収されたアイテム * 4の値を設定
    scoreboard players operation @s Temporary *= $4 Const

# 最大値をきめる
    execute if score @s Temporary matches 2300.. run scoreboard players set @s Temporary 2300

# ダメージ
    # 与えるダメージ
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get @s Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正functionを実行
        function lib:damage/modifier
    # 攻撃したモブ1体を対象に
        execute as @e[type=#lib:living,type=!player,tag=Victim] run function lib:damage/

# リセット
    scoreboard players reset @s Temporary
    function lib:damage/reset