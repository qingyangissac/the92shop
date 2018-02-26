<%-- 
    Document   : addExpenseType
    Created on : Feb 12, 2018, 9:31:06 PM
    Author     : Jacquelyn
--%>
<%@page import="DAO.ExpenseTrackerDAO"%>
<%@page import="DAO.ExpenseTypesDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.ExpenseTypes"%>
<%@page import="entity.ExpenseTracker"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sideNavBar.jsp" %>
<%@include file="protect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Expense Type</title>
    </head>
    <body>
         <div class="subPageContent">
            <form  action="ExpenseTypeController" method="post">
             
                    <legend>Add Expense Type</legend>
                    <table>

                        <tr>
                            <td>
                                Expense Type :
                            </td>

                            <td>
                                <input type ="text" name ="newExpType" id="newExpType" required/>
                                <button type="submit" name="submit" class="btn"><i class="fa  fa-plus"> Add</i></button>
                            </td>
                        </tr>
                        
                        
                       
                    </table>
                    
                       <%
                      String error = (String) request.getAttribute("error");
                        String message = (String) request.getAttribute("message");
                        if (error != null) {
                            out.println("<p style='color:red'>" + error + "</p>");
                        }

                        if (message != null) {
                            out.println("<p style='color:red'>" + message + "</p>");
                        }
                    %>
                    
                
               
                  
            </form>

           


        </div>
    </body>
</html>
