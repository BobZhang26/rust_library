// Library Example: MathUtils Description: 
// Create a library that provides basic mathematical utility functions. 
// Include functions like 
// 1. calculating the factorial of a number
// 2. finding the greatest common divisor (GCD) of two numbers
// 3. checking if a number is prime.
// convert the following code to a library crate and document it

/// Calculate the factorial of a number.
/// 
/// # Examples
/// 
/// ```
pub fn read_stdin() -> u32 {
    let mut input = String::new();
    std::io::stdin().read_line(&mut input).unwrap();
    input.trim().parse().unwrap()
}
