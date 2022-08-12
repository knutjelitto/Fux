namespace Core.Array

{-| Core of the Array type.

# Type
@docs Create

# Equality
@docs eq, ne

# Comparison
@docs lt, le, gt, ge

-}

struct Array<a>

let DefaultSize : int = 16

fn Create<a>(int size) : Array<a>

fn Equal<a>(x: Array<a>, y: Array<a>) : Bool

fn Count<a>(x: Array<a>) : int

fn IsEmpty(x: Array<a>) : bool
    Count(x) == 0

fn Append<a>(x: Array<a>, y: Array<a>) : Array<a>
