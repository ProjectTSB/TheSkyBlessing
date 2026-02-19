#> lib:bounding_fan/core/get_pos
#
# @within function lib:bounding_fan/core/calc
# ディメンションを跨ぐ可能性があるため汎用エンティティを使わない

data modify storage lib: BoundingFan.Pos set from entity @s Pos
data modify storage lib: BoundingFan.Macro.PosX set from storage lib: BoundingFan.Pos[0]
data modify storage lib: BoundingFan.Macro.PosY set from storage lib: BoundingFan.Pos[1]
data modify storage lib: BoundingFan.Macro.PosZ set from storage lib: BoundingFan.Pos[2]

kill @s
