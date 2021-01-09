#> asset:sacred_treasure/0158.mp_extractor/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0158.mp_extractor/1.trigger
#declare score_holder $BottleCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # ガラス瓶持ってるかチェック
    execute store result score $BottleCount Temporary run clear @s glass_bottle 0
    execute if score $BottleCount Temporary matches 0 run tag @s remove CanUsed
    # ガラス瓶ないよコメント //MessageLibができたら差し替える
    execute if score $BottleCount Temporary matches 0 run tellraw @s [{"translate": "item.minecraft.glass_bottle","color": "red"},{"text": " を所持している必要があります"}]
    scoreboard players reset $BottleCount Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0158.mp_extractor/3.main