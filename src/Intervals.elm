module Intervals exposing (..)


type IntervalModifier
    = Minor
    | Major
    | Perfect
    | Dimished
    | Augmented


type IntervalType
    = Second
    | Third
    | Fourth
    | Fifth
    | Sixth
    | Seventh


type alias Interval =
    ( IntervalModifier, IntervalType )


type NoteModifier
    = Flat
    | Natural
    | Sharp


applyNoteModifier : NoteModifier -> IntervalModifier -> Maybe IntervalModifier
applyNoteModifier noteModifier interval =
    case ( noteModifier, interval ) of
        ( Natural, _ ) ->
            Just interval

        ( Flat, Minor ) ->
            Just Dimished

        ( Flat, Major ) ->
            Just Minor

        ( Flat, Perfect ) ->
            Just Dimished

        ( Flat, Dimished ) ->
            Nothing

        ( Flat, Augmented ) ->
            Nothing

        ( Sharp, Minor ) ->
            Nothing

        ( Sharp, Major ) ->
            Just Augmented

        ( Sharp, Perfect ) ->
            Just Augmented

        ( Sharp, Dimished ) ->
            Nothing

        ( Sharp, Augmented ) ->
            Nothing
