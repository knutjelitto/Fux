{-| Core of the float type.

# Arithmethics
@docs Negate, Add, Sub, Mul, Div

# Equality
@docs Equal, NotEqual

# Comparison
@docs LessThan, LessEqual, GreaterThan, GreaterEqual

-}

package Core module Float

struct float

fn Negate(x: float) : float

fn Add(x: float, y: float) : float
fn Sub(x: float, y: float) : float
fn Mul(x: float, y: float) : float
fn Div(x: float, y: float) : float

fn Equal(x: float, y: float) : bool
fn NotEqual(x: float, y: float) : bool

fn LessThan(x: float, y: float) : bool
fn LessEqual(x: float, y: float) : bool
fn Greater(x: float, y: float) : bool
fn GreaterEqual(x: float, y: float) : bool
