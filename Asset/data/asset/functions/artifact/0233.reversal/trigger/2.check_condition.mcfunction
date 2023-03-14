#> asset:artifact/0233.reversal/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0233.reversal/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

#> Val
# @private
    #declare score_holder $6H.MaxHP
    #declare score_holder $6H.CurrentHP
    #declare score_holder $6H.PercentHP

# 体力
    # 最大体力を取得
        execute store result score $6H.MaxHP Temporary run attribute @s minecraft:generic.max_health get

    # 現在体力を取得
        function api:data_get/health
        execute store result score $6H.CurrentHP Temporary run data get storage api: Health 1000

    # 割合
        scoreboard players operation $6H.CurrentHP Temporary /= $6H.MaxHP Temporary

# 体力が30%以下か確認
    execute if score $6H.CurrentHP Temporary matches 301.. run function asset:artifact/0233.reversal/trigger/error_message
    execute if score $6H.CurrentHP Temporary matches 301.. run tag @s remove CanUsed
    scoreboard players reset $6H.MaxHP Temporary
    scoreboard players reset $6H.CurrentHP Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0233.reversal/trigger/3.main