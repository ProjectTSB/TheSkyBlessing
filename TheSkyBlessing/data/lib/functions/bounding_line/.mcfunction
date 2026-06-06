#> lib:bounding_line/
#
# ヒットボックスが直線に重なるエンティティにタグを付与する
#
# @input args
#   position: 実行位置
#       基準点（直線の始点）
#   rotation: 実行向き
#       基準向き（直線の方向）
#   storage lib: Argument.BoundingLine.Selector: string
#       判定対象とするエンティティのセレクタ
#   storage lib: Argument.BoundingLine.Length: double
#       直線の長さ
#   storage lib: Argument.BoundingLine.Command: string
#       衝突点で実行するコマンド（省略時はタグBoundingLine付与）
#
# @output tag BoundingLine
#
# @api
#
#> return
# @api
    #declare tag BoundingLine

# 引数チェック
    execute unless data storage lib: Argument.BoundingLine.Selector run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_line/","color":"gold"},{"text":"のSelector引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingLine.Length run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_line/","color":"gold"},{"text":"のLength引数が不足しています。","color":"white"}]

# 引数デフォルト値セット
    execute unless data storage lib: Argument.BoundingLine.Command run data modify storage lib: BoundingLine.Macro.command set value "tag @s add BoundingLine"

# 引数コピー
    execute if data storage lib: Argument.BoundingLine.Command run data modify storage lib: BoundingLine.Macro.command set from storage lib: Argument.BoundingLine.Command

# セレクタ本体切り出し
    data modify storage lib: BoundingLine.Macro.selector_variable set string storage lib: Argument.BoundingLine.Selector 0 2

# 一時スコアオブジェクティブ作成
    scoreboard objectives add lib_bounding_line dummy

# セレクタ引数切り出し
    execute store result score #selector_str_len lib_bounding_line run data get storage lib: Argument.BoundingLine.Selector
    data modify storage lib: BoundingLine.Macro.selector_arguments set value ""
    execute if score #selector_str_len lib_bounding_line matches 4.. run data modify storage lib: BoundingLine.Macro.selector_arguments set string storage lib: Argument.BoundingLine.Selector 3 -1

# パラメータをスコアに代入
    execute store result score #length lib_bounding_line run data get storage lib: Argument.BoundingLine.Length 1024

# execute幾何学で角度保持用マーカを角度align
    execute in minecraft:overworld as 0-0-0-0-0 positioned 0.0 0.0 0.0 positioned ^ ^ ^-0.5 align xyz facing -0.5 -0.5 -0.5 positioned as @s run tp @s 0.0 0.0 0.0 ~ ~

# 再帰開始
    execute if score #length lib_bounding_line matches 1.. positioned ^ ^ ^4 positioned ~-4 ~-4 ~-4 run function lib:bounding_line/core/rec.m with storage lib: BoundingLine.Macro

# 一時スコアオブジェクティブ削除
    scoreboard objectives remove lib_bounding_line

# ストレージリセット
    data remove storage lib: BoundingLine
    data remove storage lib: Argument.BoundingLine
