#> asset:object/example.1/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/65534/register

# オブジェクトはモブとは違い、基本的には攻撃などの対象とされない。
# Tick以外のトリガーを持たないためモブより軽いが、その分用途は限られがち。
# 飛び道具や演出など、モブではないがTickさせたいものに使うこと。
# 「攻撃で破壊可能な飛び道具や設置物」といった、なんらかの方法でダメージを受けるものや、
# 「バニラAIで攻撃してくるもの」といった、コマンドではない手段で攻撃してくるものはMobAssetで実装すること。

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# ID (int)
    data modify storage asset:object ID set value 65534
# フィールド
    data modify storage asset:object Field.myValue set value "object_sample.1"
