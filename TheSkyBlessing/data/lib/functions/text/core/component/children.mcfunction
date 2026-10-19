#> lib:text/core/component/children
# @within function
#   lib:text/core/component/collect
#   lib:text/core/component/children

# Childrenを末尾からNodesへ積み、先頭の子から処理できる順序にする
    data modify storage lib:text Component.Node set value {}
    data modify storage lib:text Component.Node.Style set from storage lib:text Component.Style
    data modify storage lib:text Component.Node.Value set from storage lib:text Component.Children[-1]
    data modify storage lib:text Component.Nodes append from storage lib:text Component.Node
    data remove storage lib:text Component.Children[-1]
    execute if data storage lib:text Component.Children[0] run function lib:text/core/component/children
