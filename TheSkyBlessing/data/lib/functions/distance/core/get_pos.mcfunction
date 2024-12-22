#> lib:distance/core/get_pos
#
# 座標取得
#
# @internal

# Pos取得
data modify storage lib: Distance.tmp.Pos set from entity @s Pos
data modify storage lib: Distance.tmp.X set from storage lib: Distance.tmp.Pos[0]
data modify storage lib: Distance.tmp.Y set from storage lib: Distance.tmp.Pos[1]
data modify storage lib: Distance.tmp.Z set from storage lib: Distance.tmp.Pos[2]

# マーカー削除
kill @s
