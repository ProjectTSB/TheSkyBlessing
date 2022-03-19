#> asset:mob/0276.ksitigarbha_body/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0276.ksitigarbha_body/tick/1.trigger


# ペアのIDセット
    scoreboard players operation $7O.PairID Temporary = @s 7O.PairID

# ペアのお地蔵さん本体がいない場合いる場所にTP、いない場合キルフラグをつける
    function asset:mob/0276.ksitigarbha_body/tick/2.1.fix_position
    
# 自分に雪が乗っているか確認して、乗っていなかった場合片割れをキル
    function asset:mob/0276.ksitigarbha_body/tick/2.2.ongaeshi

# キルフラグがついたやつを処理
    function asset:mob/0276.ksitigarbha_body/tick/2.3.garbage_collection

# リセット
    scoreboard players reset $7O.PairID Temporary
