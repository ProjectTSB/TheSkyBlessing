#> asset:sacred_treasure/0152.call_cat/trigger/_index.d
# @private

#> tag
# @within function asset:sacred_treasure/0152.call_cat/trigger/*
    #declare tag 48.CalledCat

# スコアをどう使ってるかのメモ
    # ネコ
        # 0───────────>600
        #  生存してる時間
        #
        # 30秒経ったらネコを帰らせるため

    # プレーヤー
        # -10──────────────────>0───────────────>21>22───────────>
        #  使用者限定召喚直後回復CD |回復クールダウン(CD) |回復量カウント
        #
        # プレーヤーを21まで毎tickカウントアップさせる（クールダウン）
        # 一度の回復量を制限するため、回復した場合にネコ1匹につきプレーヤのスコアを1加算（21を引けば回復回数が求められる）