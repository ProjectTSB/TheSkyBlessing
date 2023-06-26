#> asset:artifact/0566.great_sage_helmet/damage/3.talk
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/damage/2.health_check

#> Private
# @private
    #declare score_holder $Random

# 喋る
    playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 0.4 1.6

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $10 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s {"text":"<Erysus> 大丈夫？！逃げたほうがいいよ！"}
        execute if score $Random Temporary matches 1 run tellraw @s {"text":"<Erysus> 死にかけだよ！"}
        execute if score $Random Temporary matches 2 run tellraw @s {"text":"<Erysus> そろそろまずいかもしれないよ"}
        execute if score $Random Temporary matches 3 run tellraw @s {"text":"<Erysus> 体力に気をつけて！"}
        execute if score $Random Temporary matches 4 run tellraw @s {"text":"<Erysus> これ以上の損傷はまずいかも..."}
        execute if score $Random Temporary matches 5 run tellraw @s {"text":"<Erysus> 頑張って、生きる希望はまだあるから！"}
        execute if score $Random Temporary matches 6 run tellraw @s {"text":"<Erysus> 回復は？！"}
        execute if score $Random Temporary matches 7 run tellraw @s {"text":"<Erysus> 一旦引いたほうがいいんじゃない？"}
        execute if score $Random Temporary matches 8 run tellraw @s {"text":"<Erysus> 言っとくけど自動回復みたいなことできないからね？"}
        execute if score $Random Temporary matches 9 run tellraw @s {"text":"<Erysus> 体力が低いね...死なないといいんだけど"}

    # リセット
        scoreboard players reset $Random Temporary
