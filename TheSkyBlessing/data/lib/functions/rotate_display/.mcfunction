#> lib:rotate_display/
#
# 実行者ディスプレイの見た目上の角度を実行向きへと正確に向けます
# 注意：scale[0]とscale[1]の値が異なるとせん断変形が起きます
# 技術資料：https://qiita.com/komaramune/items/68823dd4dcfdcdda0a0e
#
# @input
#   as entity（ディスプレイ系エンティティ限定）
#   rotation
#
# @api

# ディスプレイじゃなかったら失敗
    execute unless entity @s[type=#lib:display] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"rotate_displayの実行者がディスプレイ系エンティティではありません","color":"white"}]

# ディスプレイのエンティティ向きを真下に
    execute positioned as @s run tp @s ~ ~ ~ 0 90

# ストレージ準備
    data modify storage lib: laser.transformation set value {left_rotation:{angle:0f,axis:[0d,0d,0d]},right_rotation:{angle:0f,axis:[0f,0f,1f]}}

# 汎用エンティティを実行者にして計算処理
    execute in overworld as 0-0-0-0-0 run function lib:rotate_display/core/marker

# 変形反映
    data modify entity @s transformation merge from storage lib: laser.transformation

# ストレージ掃除
    data remove storage lib: laser
