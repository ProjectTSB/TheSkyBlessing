#> lib:bounding_fan/core/calc
#
# @within function lib:bounding_fan/

# sin(扇形の角度/4) 取得
    execute store result entity @s Rotation[0] float 0.00025 run data get storage lib: Argument.BFan.Angle 1000
    execute rotated as @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
    data modify storage lib: BFan.Macro.Sin set from entity @s Pos[0]

# 実行位置取得
    tp @s ~ ~ ~ ~ ~
    data modify storage lib: BFan.Pos set from entity @s Pos
    data modify storage lib: BFan.Macro.PosX set from storage lib: BFan.Pos[0]
    data modify storage lib: BFan.Macro.PosY set from storage lib: BFan.Pos[1]
    data modify storage lib: BFan.Macro.PosZ set from storage lib: BFan.Pos[2]

# 汎用エンティティを原点に＆向きを水平に
    tp @s 0.0 0.0 0.0 ~ 0.0

# パラメータをコピー
    data modify storage lib: BFan.Macro.Radius set from storage lib: Argument.BFan.Radius
    execute store result storage lib: BFan.Macro.HeightHalf float 0.0005 run data get storage lib: Argument.BFan.Height 1000
    data modify storage lib: BFan.Macro.Selector set from storage lib: Argument.BFan.Selector

# マクロと幾何学で判定
    function lib:bounding_fan/core/detect.m with storage lib: BFan.Macro

# 汎用エンティティをリセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0

# ストレージリセット
    data remove storage lib: BFan
    data remove storage lib: Argument.BFan
