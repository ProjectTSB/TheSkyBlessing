#> lib:bounding_cylinder/core/get_pos
#
# @within function lib:bounding_cylinder/
# ディメンションを跨ぐ可能性があるため汎用エンティティを使わない

data modify storage lib: BoundingCylinder.Pos set from entity @s Pos
data modify storage lib: BoundingCylinder.Macro.PosX set from storage lib: BoundingCylinder.Pos[0]
data modify storage lib: BoundingCylinder.Macro.PosY set from storage lib: BoundingCylinder.Pos[1]
data modify storage lib: BoundingCylinder.Macro.PosZ set from storage lib: BoundingCylinder.Pos[2]

kill @s
