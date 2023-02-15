#> asset:mob/308.brave_arrow/tick/event/damage
#
# ダメージ
#
# @within function asset:mob/308.brave_arrow/tick/event/hit

# オーナー特定
    execute at @a[distance=..100] if score @s 8K.OwnerID = @p UserID run tag @p add 8K.OwnerPlayer

# どうしてもダメージを受けてほしい
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~50の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 350
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @a[tag=8K.OwnerPlayer] run function lib:damage/modifier
# ダメージ
    function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument
    tag @a[tag=8K.OwnerPlayer] remove 8K.OwnerPlayer