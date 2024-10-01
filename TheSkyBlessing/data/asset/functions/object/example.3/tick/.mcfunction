#> asset:object/example.3/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/65532/tick


# パーティクルを出しながら追いかけてくる
    particle dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 0 1

# example.3には自身のtick処理があるため、本来は継承元のtick処理は使用しないが、
# この処理を実行することにより、継承元のexample.2のtick処理(example.1から継承した処理)も呼び出すようになる。
    function asset:object/super.tick

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
