<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="exp10.product"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exp No 10</title>
       
    </head>
    <body>
        <%
         
            product st=new product("Product 1",10.99,"Yes");
            product st1=new product("Product 2",5.99,"No");
            product st2=new product("Product 3",20.50,"Yes");
           
            ArrayList<product> obj=new ArrayList<product>();
            obj.add(st);
            obj.add(st1);
            obj.add(st2);
            //String[] arr=new String[10];
            Collections.sort(obj,Collections.reverseOrder());

pageContext.setAttribute("obj", obj);
        %>
        <table border="2px"><tr><th>Name</th><th>Price</th><th>In Stock</th></tr>
        <c:forEach items="${pageScope.obj}" var="i">
           
                <tr> <td>${i.getName()}</td>
                    <td>${i.getPrice()}</td>
                    <td>${i.getinstock()}</td>
                </tr>
        </c:forEach>  
        </table>
       </table>
    </body>
</html>














