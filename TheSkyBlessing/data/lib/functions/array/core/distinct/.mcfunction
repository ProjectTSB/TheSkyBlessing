#> lib:array/core/distinct/
# @within function
#   lib:array/distinct
#   lib:array/core/distinct/

# 要素を一つ取り出す
    data modify storage lib: Element._ set from storage lib: CopiedArray[-1]
# upsert する
    execute store success storage lib: HasSameElem byte 1 run function lib:array/core/distinct/has_same_elem.m with storage lib: Element
    execute if data storage lib: {HasSameElem:false} run data modify storage lib: DistinctArray append from storage lib: Element
# リセット
    data remove storage lib: Element
    data remove storage lib: HasSameElem
    data remove storage lib: CopiedArray[-1]
# ループ
    execute if data storage lib: CopiedArray[0] run function lib:array/core/distinct/
