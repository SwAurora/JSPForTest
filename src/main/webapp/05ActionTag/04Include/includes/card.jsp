<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  Reader rin = new FileReader("C://card/cardname.txt");
  String cname = "";
  while(true)
  {
    int data = rin.read();
    if(data == -1)
    {
      break;
    }
    cname += (char)data + "";
  }
  String[] arr = cname.split(" ");
  for(String s : arr)
  {
    System.out.println(s);
  }
  rin.close();
%>

<div id="cards">
  <div class="card">
    <img src="img/<%=arr[0]%>">
    <div class="iteminfo">
      <span>Category</span>
      <h3>상품설명</h3>
      <p>이상품에 대한 설명이 들어갑니다</p>
      <a href="#">자세히보기</a>
    </div>
  </div>
  <div class="card">
    <img src="img/<%=arr[1]%>">
    <div class="iteminfo">
      <span>Category</span>
      <h3>상품설명</h3>
      <p>이상품에 대한 설명이 들어갑니다</p>
      <a href="#">자세히보기</a>
    </div>
  </div>
  <div class="card">
    <img src="img/<%=arr[2]%>">
    <div class="iteminfo">
      <span>Category</span>
      <h3>상품설명</h3>
      <p>이상품에 대한 설명이 들어갑니다</p>
      <a href="#">자세히보기</a>
    </div>
  </div>
  <div class="card">
    <img src="img/<%=arr[3]%>">
    <div class="iteminfo">
      <span>Category</span>
      <h3>상품설명</h3>
      <p>이상품에 대한 설명이 들어갑니다</p>
      <a href="#">자세히보기</a>
    </div>
  </div>
</div>