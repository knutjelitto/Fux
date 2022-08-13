package Core module String

{-| Core of the string type.

# Type
@docs string

# Equality
@docs Equal (==), NotEqual (!=)

# Comparison
@docs Compare (<=>), LessThan (<), LessEqual (<=), GreaterThen (>), GreaterEqual (>=)

-}

struct string

fn Equal(x: string, y: string) : bool
fn NotEqual(x: string, y: string) : bool
