#> asset:sacred_treasure/0609.lunar_flare/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0609.lunar_flare/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 視点検知
    tag @p add Watcher
#　敵を狙っている時にのみ発動
    # この時点で相手にタグを付与する
        execute positioned ^ ^ ^20.1 as @e[type=#lib:living,tag=!Uninterferable,distance=..20] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add 9P.Target
    # できてなかったらcanusedタグ消しちゃう
        execute unless entity @e[type=#lib:living,tag=9P.Target] run tag @s remove CanUsed
# 終了
    tag @p remove Watcher

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0609.lunar_flare/3.main