# Dev Simple Calculator

A simple web-based calculator built to practice and demonstrate fundamental JavaScript concepts alongside HTML and CSS.

## Overview

Dev Simple Calculator allows users to perform four basic arithmetic operations:

* Addition
* Subtraction
* Multiplication
* Division

The original version of this project used JSP to process calculations on the server side. It has been reworked into a fully client-side application using HTML, CSS, and JavaScript so that it can run as a static website and be deployed easily on platforms such as Vercel.

## Features

* Accepts two numeric inputs
* Supports addition, subtraction, multiplication, and division
* Displays calculation results dynamically
* Handles division by zero
* Validates required inputs
* Provides a clear/reset option
* Responsive layout for smaller screens

## Technologies

* HTML5
* CSS3
* JavaScript

## Project Structure

```text
calculator/
├── index.html
├── style.css
├── script.js
└── README.md
```

### File Descriptions

**`index.html`**
Contains the calculator interface, input fields, operation buttons, and result area.

**`style.css`**
Contains the visual styling, layout, result display, buttons, and responsive design.

**`script.js`**
Handles form submission, arithmetic operations, validation, error handling, and dynamic DOM updates.

## JavaScript Concepts Practiced

This project was created as a practical exercise for learning JavaScript. It demonstrates concepts including:

* Variables and constants
* Numbers and arithmetic operators
* Functions
* Conditional statements
* Event listeners
* Form handling
* DOM manipulation
* Template literals
* Input validation
* Error handling
* CSS class manipulation

## How It Works

1. The user enters two numbers.
2. The user selects an arithmetic operation.
3. JavaScript intercepts the form submission.
4. The selected operation is performed.
5. The result is displayed dynamically without loading another page.
6. The user can clear the form and perform another calculation.

## Running the Project

No server or database is required.

Simply open `index.html` in a web browser.

For local development, the project can also be opened using a development server such as VS Code Live Server.

## Deployment

The project is a static HTML, CSS, and JavaScript application and can be deployed using platforms such as Vercel or GitHub Pages.

## Purpose

This project is primarily a learning project focused on applying JavaScript fundamentals in a practical application.

It also demonstrates how a server-side JSP implementation can be reworked into a client-side JavaScript application when server-side processing is unnecessary.

## Future Improvements

Possible improvements include:

* More mathematical operations
* Keyboard support
* Calculation history
* Dark/light mode
* Improved accessibility
* More advanced calculator functions
* Improved error and input feedback

## Author

**THERO — Hyginus Toya Andre-Elladim**

Software Engineering student and creative artist exploring web development, software engineering, AI, and creative technology.
