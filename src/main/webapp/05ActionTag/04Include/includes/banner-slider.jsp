<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page import="java.io.*" %>

<%
    Reader rin = new FileReader("C://banner//bname.txt");
    String bname = "";
    while(true)
    {
        int data = rin.read();
        if(data == -1)
        {
            break;
        }
        bname += (char) data + "";
    }
    String[] arr = bname.split(" ");
    rin.close();
%>
<!-- banner slider -->
<div id="banner-slider" class="swiper">
    <ul class="swiper-wrapper">
        <li class="swiper-slide"><a href=#> <img src="img/<%=arr[0]%>"> </a></li>
        <li class="swiper-slide"><a href=#> <img src="img/<%=arr[1]%>"> </a></li>
        <li class="swiper-slide"><a href=#> <img src="img/<%=arr[2]%>"> </a></li>
        <li class="swiper-slide"><a href=#> <img src="img/<%=arr[3]%>"> </a></li>

    </ul>
    <!-- If we need pagination -->
    <div class="swiper-pagination"></div>
    <!-- If we need navigation buttons -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    <!-- scrollbar -->
    <div class="swiper-scrollbar"></div>
</div>