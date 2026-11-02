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
#   rom:**
    #declare score_holder $LatestProvidedAddress
    #declare score_holder $Address

# $LatestProvidedAddress : 最後に提供したアドレス
# rom:provide はオフセット要素が $LatestProvidedAddress の経路にだけ付いているものとして上の桁を比べるので、provide の外で書き換えるときは窓も同じアドレスに揃える
# $Address : please から provide へ渡す、今回のアドレス
