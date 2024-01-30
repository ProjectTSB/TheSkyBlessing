#> lib:particle/
#
# 指定されたデータを元にパーティクルを召喚する
#
# @input storage Paricle:
# @api

#> temp
# @private
    #declare tag Init

# 無記入だった場合デフォ数値を設定する
    # ビルボード
        execute unless data storage lib: Particle.Billboard run data modify storage api: Particle.Billboard set value center
    # 角度
        #execute unless data storage lib: Particle.Brightness run data modify storage api: Particle.Billboard set value 0
    # カラー
        execute unless data storage lib: Particle.Color run data modify storage api: Particle.Color set value FFFFFF
    # スケール
        execute unless data storage lib: Particle.Scale run data modify storage api: Particle.Scale set value 1

# 召喚処理
    execute summon text_display run function lib:particle/init with storage lib: Particle

# リセット
    scoreboard players reset @s Temporary
    data remove storage lib: Particle