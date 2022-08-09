package Core module Equality api

{-| Core of the List type.

# Type
@docs List, Cons, Nil

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

interface Equateable<a>
    fn Equals(x: a, y: a) : Bool
    fn NotEquals(x: List, y: List) : Bool


equals = fn(x: List, y: List) : Bool
notEquals = fn(x: List, y: List) : Bool
