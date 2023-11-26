#> asset:artifact/1024.brave_rod/trigger/combo/laser_damage
#
# レーザーのダメージ処理
#
# @within function
#   asset:artifact/1024.brave_rod/trigger/combo/laser
#   asset:artifact/1024.brave_rod/trigger/combo/laser_finish

# 使用者にヒットタグ付与
    tag @p[tag=SG.Used] add SG.Hit

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 250
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=SG.Used] run function lib:damage/modifier
# ダメージ実行
    function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument