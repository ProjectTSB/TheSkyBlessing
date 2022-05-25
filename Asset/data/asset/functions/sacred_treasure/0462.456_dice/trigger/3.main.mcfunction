#> asset:sacred_treasure/0462.456_dice/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0462.456_dice/trigger/2.check_condition

#> Private
# @private
    #declare tag CU.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# サイコロを振る
    # 疑似乱数取得
        execute store result score @s Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation @s Temporary %= $3 Const
    # 0~2の値を4~6になるように4加算
        scoreboard players add @s Temporary 4

# メッセージ表示
    tellraw @s [{"selector":"@s"},{"text":"はダイスを振った..."},{"score":{"name":"@s","objective":"Temporary"}}]

# ダメージを与えるエンティティの絞り込み
    tag @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] add CU.Target

# ダメージ計算 出た目の50倍
    scoreboard players operation @s Temporary *= $50 Const

# ダメージ処理
    #ダメージ設定
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get @s Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        # 属性をランダムに決定する
            # 疑似乱数取得
                execute store result score @s Temporary run function lib:random/
            # ほしい範囲に剰余算
                scoreboard players operation @s Temporary %= $3 Const

            # 火
                execute if score @s Temporary matches 0 run data modify storage lib: Argument.ElementType set value "Fire"
                execute if score @s Temporary matches 0 at @e[tag=CU.Target] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 30 force

            # 水
                execute if score @s Temporary matches 1 run data modify storage lib: Argument.ElementType set value "Water"
                execute if score @s Temporary matches 1 at @e[tag=CU.Target] run particle minecraft:bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.01 100 force

            # 雷
                execute if score @s Temporary matches 2 run data modify storage lib: Argument.ElementType set value "Thunder"
                execute if score @s Temporary matches 2 at @e[tag=CU.Target] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
    # 補正functionを実行
        function lib:damage/modifier
    # 近くの敵1体を対象にダメージを与える
        execute as @e[tag=CU.Target] run function lib:damage/

# リセット
    scoreboard players reset @s Temporary
    data remove storage lib: Argument
    tag @e[tag=CU.Target] remove CU.Target