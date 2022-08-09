package Core module Integer impl

impl fn Eq<int>.Equals(int x, int y) : bool
    snoopdog

impl fn Eq<int>.NotEquals(int x, int y) : bool
    not Equals(x, y)

int : Ord<int>

int impl Eq<int>

fn negate (x: int) : int

fn add (x: int, y: int) : int
fn sub (x: int, y: int) : int
fn mul (x: int, y: int) : int
fn div (x: int, y: int) : int
fn mod (x: int, y: int) : int
fn rem (x: int, y: int) : int

fn eq(x: int, y: int) : Bool
fn ne(x: int, y: int) : Bool

lt = fn(x: int, y: int) : Bool
le = fn(x: int, y: int) : Bool
gt = fn(x: int, y: int) : Bool
ge = fn(x: int, y: int) : Bool
