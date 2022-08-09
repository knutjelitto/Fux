package Core module List

{-| Core of the List type.

# Type
@docs List, Cons, Nil

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

enum List<a>
    Cons(a, List<a>)
    Nil

equals = fn(x: List, y: List) : Bool
notEquals = fn(x: List, y: List) : Bool
