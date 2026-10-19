#> lib:text/core/component/collect
# @within function
#   lib:text/measure_component
#   lib:text/core/component/collect

# Nodesから処理対象と継承した装飾を取り出す
    data modify storage lib:text Component.Current set from storage lib:text Component.Nodes[-1].Value
    data modify storage lib:text Component.Style set from storage lib:text Component.Nodes[-1].Style
    data remove storage lib:text Component.Nodes[-1]

# 本文の装飾を継承値へ重ねる
# 配列では最内側の先頭要素の装飾を後続要素にも継承する
    data modify storage lib:text Component.Head set from storage lib:text Component.Current
    execute if data storage lib:text Component.Head[0] run function lib:text/core/component/head
    data modify storage lib:text Component.Style.Bold set from storage lib:text Component.Head.bold
    data modify storage lib:text Component.Style.Font set from storage lib:text Component.Head.font

# 配列の要素を積み直し、入れ子も同じ入口で処理する
    data modify storage lib:text Component.Children set value []
    execute if data storage lib:text Component.Current[0] run data modify storage lib:text Component.Children set from storage lib:text Component.Current
    execute if data storage lib:text Component.Children[0] run function lib:text/core/component/children
    execute if data storage lib:text Component.Current[0] run return run function lib:text/core/component/collect

# extra を差込み本文とは別に積み、リスト間の要素型の違いを保つ
    data modify storage lib:text Component.Children set from storage lib:text Component.Current.extra
    execute if data storage lib:text Component.Children[0] run function lib:text/core/component/children

# 動的な本文の参照を拒否する
    execute if data storage lib:text Component.Current.selector run return fail
    execute if data storage lib:text Component.Current.nbt run return fail
    execute if data storage lib:text Component.Current.score run return fail
    execute if data storage lib:text Component.Current.keybind run return fail

# 文字列・text・translateから本文を取り出す
# 文字列型のリストへ追加し、本文として扱える文字列だけを受け取る
    data modify storage lib:text Component.Check set value [""]
    data modify storage lib:text Component.Check append from storage lib:text Component.Current
    data modify storage lib:text Component.Check append from storage lib:text Component.Current.text
    execute if data storage lib:text Component.Current.translate run data modify storage lib:text Component.Check append from storage lib:text Component.Current.translate
    execute unless data storage lib:text Component.Check[1] run return fail

# 装飾付きの本文をPartsへ追加し、translateは差し込む要素へ展開する
    data modify storage lib:text Component.Part set from storage lib:text Component.Style
    data modify storage lib:text Component.Part.Text set from storage lib:text Component.Check[1]
    execute unless data storage lib:text Component.Current.translate run data modify storage lib:text Component.Parts append from storage lib:text Component.Part
    execute if data storage lib:text Component.Current.translate unless function lib:text/core/component/translate run return fail

# 差込み本文を積み、本文・extra・兄弟の順で処理する
    execute if data storage lib:text Component.Children[0] run function lib:text/core/component/children
    execute if data storage lib:text Component.Nodes[0] run return run function lib:text/core/component/collect
    return 1
