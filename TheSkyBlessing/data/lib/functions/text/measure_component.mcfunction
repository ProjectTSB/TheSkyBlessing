#> lib:text/measure_component
#
# 静的な本文・装飾・文章直接指定の translate を含む単一行の送り幅を測る
# text・extra・入れ子配列・配列先頭からの装飾継承・boldを扱う
# fontはdefault・uniform・spaceに対応し、defaultだけがフォント強制設定に追従する
# translateは文章の %s・%N$s・%% とwithの文字列・compound、入れ子に対応する
# 翻訳辞書は検索せず、selector・NBT・score・keybindの動的参照は失敗する
# 未収録文字・§・不正入力・未対応フォントや書式・計算範囲超過も失敗する
# 入力は消費し、失敗時は両設定の結果を削除する
# 色・斜体・下線・取り消し線は送り幅を増やさない
#
# @input storage lib:
#   Component : compound | list | string
#       NBT で渡す TextComponent
#       文字列はJSONとして解析せず、本文として扱う
#       NBTリスト内の要素は同じ型で渡す
# @output storage lib:
#   Return.Default.TextAdvance : double
#   Return.Unifont.TextAdvance : double
#       通常表示・Unicodeフォント強制時の送り幅
#   Return.Default.TextWidth : int
#   Return.Unifont.TextWidth : int
#       部分ごとの送り幅を合計してから切り上げた整数
# @api

# 入力を消費し、前回の結果を消す
    data remove storage lib: Return.Default
    data remove storage lib: Return.Unifont
    data modify storage lib:text Component set value {Nodes:[{Style:{Bold:false,Font:"minecraft:default"}}],Parts:[]}
    data modify storage lib:text Component.Nodes[0].Value set from storage lib: Component
    data remove storage lib: Component

# 本文を分解して両設定の幅を測り、失敗時も作業領域を片付ける
    scoreboard players set $TextResult Temporary 0
    execute if function lib:text/core/component/collect store result score $TextResult Temporary run function lib:text/core/component/measure
    data remove storage lib:text Component
    data remove storage lib:text Work
    execute if score $TextResult Temporary matches 1 run return 1
    data remove storage lib: Return.Default
    data remove storage lib: Return.Unifont
    return fail
