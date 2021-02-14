#> asset:sacred_treasure/0355.barrel/barrel/hit
#
# 樽がエンティティに当たった時に実行される
#
# @within asset:sacred_treasure/0355.barrel/barrel/tick

# ダメージ処理
    # 引数の設定
        data modify storage lib: Argument.Damage set value 20.0f
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正
        function lib:damage/modifier
    # 実行
        execute as @e[type=#lib:living,type=!player,dx=0.5,dy=0.05,dz=0.5] run function lib:damage/simple
    # 開放
        data remove storage lib: Argument
# 壊れる
    function asset:sacred_treasure/0355.barrel/barrel/break