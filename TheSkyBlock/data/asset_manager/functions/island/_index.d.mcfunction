#> asset_manager:island/_index.d
# @private

#> storage
# @within *
#   asset:island/*/register/*
#   asset:island/common/register
#   asset_manager:island/**
#declare storage asset:island

#> Tag
# @within *
#   asset:island/*/register/
#   asset_manager:island/**
#   core:tick/
#declare tag CursedTreasure

#> Tag
# @within *
#   asset_manager:island/**
#   core:tick/
#declare tag DispelledCursedTreasure

#> Tag
# @within function
#   asset_manager:island/register/*
#declare tag CursedTreasureInit

#> Tag
# @within function
#   asset_manager:island/dispel/boss/*
#   asset_manager:island/tick/
#declare tag CantDispel

# MEMO
# DispelPhase:
#   0b: unknown(first boss waited/dispellable)
#   1b: boss waited
#   2b: dispellable
#   3b: dispelled