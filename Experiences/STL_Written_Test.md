# Streams Tech Ltd. Internship Test 2025

This document outlines the questions from the Streams Tech Ltd. Internship Test 2025, covering various topics in computer science.

## Section 1: Problem Solving and Algorithms

1.  **Unique Number:** You are given a list of 10 numbers where each number appears twice, except for one. How do you find the unique number?

2.  **Recommendation System:** For an e-commerce recommendation system, which AI model (supervised, unsupervised, or reinforcement learning) is most appropriate and why?

3.  **Palindrome:** Write code to check if a string is a palindrome.

4.  **BFS:** Write the pseudocode for a Breadth-First Search (BFS) algorithm.

5.  **Second Largest Number:** Write code to find the second largest number in an array.

6.  **Time Complexity Analysis:**
    What is the time complexity of the following code snippet? Explain your reasoning.
    ```java
    for (i = 1; i <= n; i++) {
        j = i;
        while (j > 0) {
            j = j / 2;
        }
    }
    ```

## Section 2: Programming Concepts

1.  **Output Prediction:** What is the output of the following code?
    ```java
    int a = 5;
    int b = ++a + a++ + --a;
    // What is the value of b?
    ```

2.  **Climbing Stairs:** You are climbing a staircase with 10 stairs. You can take either 1 or 2 steps at a time. Find the total number of ways to reach the 10th stair.

3.  **Bitwise Operators:** What do the `*` and `|` operators signify in most programming languages? *(Note: The question likely intended to ask about `&` and `|` for bitwise AND and OR, as `*` is typically multiplication.)*

4.  **Factorial Function:** Find the error(s), if any, in the following factorial function. Write the correct code and explain the issue.
    ```python
    def factorial(n):
        if (n == 0):
            return 1
        else:
            return n * factorial(n - 1)
    ```

## Section 3: Object-Oriented Programming (OOP)

1.  **Dynamic Dispatch:** What is the output of the following Java code that demonstrates dynamic dispatch?
    ```java
    public class Animal {
        public void makeSound() {
            System.out.println("Animal makes a sound");
        }
    }

    public class Dog extends Animal {
        @Override
        public void makeSound() {
            System.out.println("Dog barks");
        }
    }

    public static void main(String[] args) {
        Animal a = new Dog();
        a.makeSound();
    }
    ```

2.  **Differences:** Explain the difference between:
    *   Abstract class vs. Interface
    *   Compile-time polymorphism vs. Runtime polymorphism
    *   `const` vs. `readonly`

3.  **Design Patterns:** In a scenario where there is a central object, and a list of other objects needs to update their state whenever the central object changes, what is the most suitable design pattern to use and why? (Hint: Observer Pattern)

4.  **Constructors:**
    *   Why are constructors used?
    *   Write an example of a `Student` constructor with `name` and `ID` as attributes.

## Section 4: Software Engineering and Databases

1.  **Networking:**
    *   Why is TCP/IP used?
    *   What is the difference between HTTP and HTTPS?

2.  **Version Control:** What is version control, and why is it important?

3.  **Unit Testing:** What is unit testing, and why is it important in software development?

4.  **Development Methodologies:** Compare and contrast the Waterfall and Agile methodologies.

5.  **SQL Joins:**
    *   Explain the difference between a `LEFT JOIN` and an `INNER JOIN` with an example.
    *   Write a SQL query to find all artists who do not have any albums. You are given two tables: `artists` (`artist_id`, `name`) and `albums` (`artist_id`, `album_id`, `title`).
