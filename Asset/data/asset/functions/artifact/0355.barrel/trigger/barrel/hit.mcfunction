#> asset:artifact/0355.barrel/trigger/barrel/hit
#
# 樽がエンティティに当たった時に実行される
#
# @within asset:artifact/0355.barrel/trigger/barrel/tick

# ダメージ処理
    # 引数の設定
        data modify storage lib: Argument.Damage set value 70.0f
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正
        function lib:damage/modifier
    # 実行
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,dy=0.02,dz=0,sort=nearest,limit=1] run function lib:damage/
    # 開放
        function lib:damage/reset
# 壊れる
    function asset:artifact/0355.barrel/trigger/barrel/break