#> asset:sacred_treasure/0566.great_sage_helmet/equip/fullset_remove
#
#
#
# @within function asset:sacred_treasure/056?.great_sage_*/equip/dis_equip/main

#> Private
# @private
    #declare score_holder $Random

# タグを消す
    tag @s remove FQ.Fullset

# フルセット時喋る

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $10 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run tellraw @s[tag=!Death] {"text":"<Erysus> うるさくて嫌になっちゃった？"}
        execute if score $Random Temporary matches 1 run tellraw @s[tag=!Death] {"text":"<Erysus> ばいばい、また会おうね"}
        execute if score $Random Temporary matches 2 run tellraw @s[tag=!Death] {"text":"<Erysus> しばらくのお別れだね"}
        execute if score $Random Temporary matches 3 run tellraw @s[tag=!Death] {"text":"<Erysus> まあそこそこ楽しい時間だったね"}
        execute if score $Random Temporary matches 4 run tellraw @s[tag=!Death] {"text":"<Erysus> 浮気でもする気？"}
        execute if score $Random Temporary matches 5 run tellraw @s[tag=!Death] {"text":"<Erysus> もっと遊びたかったな"}
        execute if score $Random Temporary matches 6 run tellraw @s[tag=!Death] {"text":"<Erysus> また使ってくれるよね？"}
        execute if score $Random Temporary matches 7 run tellraw @s[tag=!Death] {"text":"<Erysus> 私のこと嫌いにならないよね？"}
        execute if score $Random Temporary matches 8 run tellraw @s[tag=!Death] {"text":"<Erysus> そう...しばらく寂しくなっちゃうな"}
        execute if score $Random Temporary matches 9 run tellraw @s[tag=!Death] {"text":"<Erysus> またね、いつか絶対使ってよね？"}
    # リセット
        scoreboard players reset $Random Temporary
