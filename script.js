const calculatorForm = document.getElementById("calculatorForm");
const resultBox = document.getElementById("resultBox");
const result = document.getElementById("result");
const backButton = document.getElementById("backButton");

calculatorForm.addEventListener("submit", function (event) {
    event.preventDefault();

    const num1Input = document.getElementById("num1");
    const num2Input = document.getElementById("num2");

    const num1 = Number(num1Input.value);
    const num2 = Number(num2Input.value);

    const operation = event.submitter.value;

    let answer;
    let expression;

    if (operation === "ADD") {
        answer = num1 + num2;
        expression = `${num1} + ${num2}`;
    }

    else if (operation === "SUB") {
        answer = num1 - num2;
        expression = `${num1} - ${num2}`;
    }

    else if (operation === "MUL") {
        answer = num1 * num2;
        expression = `${num1} × ${num2}`;
    }

    else if (operation === "DIV") {

        if (num2 === 0) {
            showResult("Math Error: Division by Zero", true);
            return;
        }

        answer = num1 / num2;
        expression = `${num1} ÷ ${num2}`;
    }

    else {
        showResult("Invalid Operator", true);
        return;
    }

    showResult(`${expression} = ${answer.toFixed(2)}`);
});


function showResult(message, isError = false) {
    result.textContent = message;
    resultBox.hidden = false;

    if (isError) {
        resultBox.classList.add("error");
    } else {
        resultBox.classList.remove("error");
    }
}


backButton.addEventListener("click", function () {
    calculatorForm.reset();
    resultBox.hidden = true;
});