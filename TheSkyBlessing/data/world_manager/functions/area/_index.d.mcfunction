#> world_manager:area/_index.d
# @private

#> Next
# @within world_manager:area/**
    #declare score_holder $NextInArea
    #declare score_holder $NextInSubArea

#> GodBoundaries Declares
# @within function
#   world_manager:area/00**
#   core:handler/rejoin
#   core:handler/join
#   debug:tutorial/*
    #declare tag TutorialEnded

#> Tutorial
# @within function
#   debug:tutorial/*
#   world_manager:area/00-*
#declare tag TutorialFlag1
#declare tag TutorialFlag2
#declare tag TutorialFlag3
#declare tag TutorialFlag4
#declare tag TutorialFlag5
#declare tag TutorialFlag6
#declare tag TutorialFlag7
#declare tag TutorialFlag8
