#> asset:artifact/0454.kinoko/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0454.kinoko/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        stopsound @s * entity.item.break
        tellraw @s [{"text": "<"},{"selector":"@s"},{"text": "> き の こ 万 歳 ！"}]
    # 処理
        execute store result storage lib: Argument.Heal double 0.01 run attribute @s generic.max_health get 50
        function lib:heal/modifier
        function lib:heal/
        function lib:heal/reset