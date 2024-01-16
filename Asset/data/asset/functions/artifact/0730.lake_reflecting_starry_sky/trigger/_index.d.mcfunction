#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/_index.d
# @private

#> tag
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main
    #declare score_holder $Interval

#> 湖本体のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/3.main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/damage
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/loop
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/**
    #declare tag KA.Lake
    #declare tag Target

#> 湖が召喚する波紋のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/**
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
    #declare tag KA.Ripple
    #declare tag RippleTarget
    #declare tag SpreadMarker

#> Rejoin関係のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/3.main
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_process
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
#   asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/summon_position
    #declare tag KA.RejoinTarget