#> asset:trader/15/select_artifact/
#
#
#
# @within function asset:trader/15/register

# APIで通常シャードのプールと隠し神器のプールを取得
    function api:artifact/get_registry/normal
    function api:artifact/get_registry/hide

# 初期化
    data modify storage asset:temp Sell set value [-1,0,0,0,0]

# 各ランクごとに配列を結合し、その中から1つ選択する
    function asset:trader/15/select_artifact/combine_and_pick.m {Rarity:1}
    function asset:trader/15/select_artifact/combine_and_pick.m {Rarity:2}
    function asset:trader/15/select_artifact/combine_and_pick.m {Rarity:3}
    function asset:trader/15/select_artifact/combine_and_pick.m {Rarity:4}
