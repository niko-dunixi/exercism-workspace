pub fn reverse(input: &str) -> String {
    // For a string, get an iterator of characters,
    // reverse their order, and collect them as a 
    // new string
    input.chars().rev().collect()
}
