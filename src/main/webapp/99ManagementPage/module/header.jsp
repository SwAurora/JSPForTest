<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page import="java.io.*" %>

<%
    Reader rin = new FileReader("C://style//header//style.txt");
    String style = "";
    while(true)
    {
        int data = rin.read();
        if(data == 1)
        {
            break;
        }
        style += (char) data + "";
    }
    String[] arr = style.split(" ");

    String border = arr[0] + " " + arr[1] + " " + arr[2];
    String bgcolor = arr[3];
    String height = arr[4];
%>
<div id="header">
    Header
</div>

<script>
    header = document.getElementById("header");
    header.style.border = "<%=border%>";
    header.style.backgroundColor = "<%=bgcolor%>";
    header.style.height = "<%=height%>";
</script>
