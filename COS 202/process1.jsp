<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<link rel="stylesheet" href="style_process1.css">
</head>

<body>
 <%
    String input1 = request.getParameter("num1");
    String input2 = request.getParameter("num2");
    String input3 = request.getParameter("operation");
   
    
    String result = "";
    String cssClass = "result-box";

    if(input1 == null || input2 == null || input3 == null ||
       input1.isEmpty() || input2.isEmpty() || input3.isEmpty()) {
        result = "Please enter all values.";
        cssClass += " error";
    } 
    
    
    else {
        try {
            double num1 = Double.parseDouble(input1);
            double num2 = Double.parseDouble(input2);
            String ops = input3;

            if(ops.equals("ADD")){
                result = num1 + " + " + num2 + " = " + String.format("%.2f", (num1 + num2));
            }
            else if(ops.equals("SUB")){
                result = num1 + " - " + num2 + " = " + String.format("%.2f", (num1 - num2));
            }
            else if(ops.equals("MUL")){
                result = num1 + " * " + num2 + " = " + String.format("%.2f", (num1 * num2));
            }
            else if(ops.equals("DIV")){
                if(num2 != 0){
                    result = num1 + " / " + num2 + " = " + String.format("%.2f", (num1 / num2));
                } else {
                    result = "Math Error: Division by Zero";
                 
                }
            }
            
            else{
                result = "Invalid Operator";
                cssClass += " error";
            }
        } catch(NumberFormatException e) {
            result = "Invalid input, numbers only.";
    
        }
    }
    %>
    
    <div class="<%= cssClass %>">
    <p><%= result %></p>

    <a href="index1.html" class="back-btn">Go Back</a>
    </div>  
</body>
</html>