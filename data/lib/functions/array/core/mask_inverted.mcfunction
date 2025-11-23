#> lib:array/core/mask_inverted
# @within function lib:array/**mask_inverted

# マスクデータの一般化
    data modify storage lib: Mask set from storage lib: Masks[-1]
    execute if data storage lib: Mask{} run data modify storage lib: Mask set from storage lib: Mask._._
# マスクデータに合わせて値を追加する
    execute if data storage lib: {Mask:false} run data modify storage lib: Array append from storage lib: MaskElement
    execute if data storage lib: {Mask: true} run data modify storage lib: Array append from storage lib: CopiedArray[-1]
# 末尾削除
    data remove storage lib: CopiedArray[-1]
    data remove storage lib: Masks[-1]
# 要素の数がずれていないかのチェック
    execute if data storage lib: CopiedArray[0] unless data storage lib: Masks[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/mask","color":"white"}]
    execute unless data storage lib: CopiedArray[0] if data storage lib: Masks[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/mask","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage lib: CopiedArray[0] if data storage lib: Masks[0] run function lib:array/core/mask_inverted