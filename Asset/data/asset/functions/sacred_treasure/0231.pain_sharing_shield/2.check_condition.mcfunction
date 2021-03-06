#> asset:sacred_treasure/0231.pain_sharing_shield/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0231.pain_sharing_shield/1.trigger

#> private
# @private
    #declare tag PainShareTarget

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/offhand

# 他にアイテム等確認する場合はここに書く
    # 対象チェック
        tag @a[tag=!this,distance=..30] add PainShareTarget
        execute unless entity @a[tag=PainShareTarget] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0231.pain_sharing_shield/3.main