module Scales exposing (..)

import Intervals exposing (..)


type alias Scale =
    { omissionsFromMajor : List IntervalType
    , variationsFromMajor : List ( NoteModifier, Int )
    }


eightToneScales : List Scale
eightToneScales =
    []


sevenToneScales : List Scale
sevenToneScales =
    [ melodicMinor, harmonicMinor ]


sixToneScales : List Scale
sixToneScales =
    []


fiveToneScales : List Scale
fiveToneScales =
    [ minorPentatonic ]


majorScale : List ( IntervalModifier, IntervalType )
majorScale =
    [ ( Major, Second ), ( Major, Third ), ( Perfect, Fourth ), ( Perfect, Fifth ), ( Major, Sixth ), ( Major, Seventh ) ]


melodicMinor : Scale
melodicMinor =
    { omissionsFromMajor = []
    , variationsFromMajor = [ ( Flat, 3 ) ]
    }


harmonicMinor : Scale
harmonicMinor =
    { omissionsFromMajor = []
    , variationsFromMajor = []
    }


minorPentatonic : Scale
minorPentatonic =
    { omissionsFromMajor = [ Second, Sixth ]
    , variationsFromMajor = [ ( Flat, 3 ), ( Flat, 7 ) ]
    }
