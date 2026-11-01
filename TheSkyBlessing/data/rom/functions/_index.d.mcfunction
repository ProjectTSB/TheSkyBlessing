#> rom:_index.d
# @private

#> Storage
# @within function
#   core:load_once
#   api:**
#   asset:*/super.*
#   asset_manager:**
#   mob_manager:**
#   rom:**
#declare storage rom:

#> Val
# @within function
#   api:rom/please
#   core:load_once
#   rom:**
    #declare score_holder $LatestProvidedAddress
    #declare score_holder $Address

#> 提供の途中で使う値
# @within function
#   rom:provide
#   rom:provide/**
    #declare score_holder $PreviousAddress

# $PreviousAddress : 前回提供したアドレス。上の桁を今回のアドレスと比べるため、比べる層の桁を最上位 2bit にずらして使う
# 使い終わっても reset しない。最後のスコアを reset すると、表示していない objective でも全プレイヤーへスコアの削除が送られる
