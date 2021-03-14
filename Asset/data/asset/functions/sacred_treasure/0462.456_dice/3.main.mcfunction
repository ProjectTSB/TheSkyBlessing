#> asset:sacred_treasure/0462.456_dice/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0462.456_dice/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# サイコロを振る
    # 疑似乱数取得
        execute store result score @s Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation @s Temporary %= $3 Const
    # 0~2の値を4~6になるように4加算
    scoreboard players add @s Temporary 4

# メッセージ表示
    tellraw @s [{"selector":"@s"},{"text":"はダイスを振った..."},{"score":{"name":"*","objective":"Temporary"}}]

# ダメージを与えるエンティティの絞り込み
    tag @e[tag=Enemy,sort=nearest,limit=1] add 7e.Target

# ダメージ計算 出た目の5倍
    scoreboard players operation @s Temporary *= $5 Const

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
            execute if score @s Temporary matches 0 run function asset:sacred_treasure/0462.456_dice/fire
            execute if score @s Temporary matches 1 run function asset:sacred_treasure/0462.456_dice/water
            execute if score @s Temporary matches 2 run function asset:sacred_treasure/0462.456_dice/thunder
    # 補正functionを実行
        function lib:damage/modifier
    # 近くの敵1体を対象にダメージを与える
        execute as @e[tag=7e.Target] run function lib:damage/

# リセット
    scoreboard players reset @s Temporary
    data remove storage lib: Argument
    tag @e[tag=7e.Target] remove 7e.Target
