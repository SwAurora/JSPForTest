<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <style>
        #maincontents
        {
            display: flex;
            justify-content: space-around;
        }
    </style>
</head>
<body>
<h1>MAIN</h1>
세션 ID : <%=session.getId()%><br>
계정 ID : <%=session.getAttribute("ID")%><br>
세션 유지시간 : <%=session.getMaxInactiveInterval()%><br>

<script>
    let max = <%=session.getMaxInactiveInterval()%>;

    function timer()
    {
        max = max - 1;
        document.getElementById('timer').innerHTML = max;
        if(max < 0)
        {
            clearInterval(tmp);
            alert("세션종료");
            location.href = "05LoginForm.jsp";
        }
    }

    tmp = setInterval(timer, 1000);
</script>

<p id="timer"></p>
<a href="05ShowCartList.jsp">장바구니로 이동</a>
<a href="05Logout.jsp">LOGOUT</a>

<div id="wrapper">
    <div id="maincontents" class="container-md">
        <%--ITEM1--%>
        <div class="card" style="width: 18rem;">
            <form>
                <input type="hidden" name="prodname" value="laptop1">
                <input type="hidden" name="cat" value="notebook">
                <input type="hidden" name="price" value="1500000">
                <img src="https://images.unsplash.com/photo-1618424181497-157f25b6ddd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wJTIwY29tcHV0ZXJ8ZW58MHx8MHx8&w=1000&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Laptop1</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addToCart(0)" class="btn btn-primary w-100 mt-3">CART</button>
                </div>
            </form>
        </div>
        <%--ITEM2--%>
        <div class="card" style="width: 18rem;">
            <form>
                <input type="hidden" name="prodname" value="laptop2">
                <input type="hidden" name="cat" value="notebook">
                <input type="hidden" name="price" value="1800000">
                <img src="https://images.unsplash.com/photo-1618424181497-157f25b6ddd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wJTIwY29tcHV0ZXJ8ZW58MHx8MHx8&w=1000&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Laptop2</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addToCart(1)" class="btn btn-primary w-100 mt-3">CART</button>
                </div>
            </form>
        </div>
        <%--ITEM3--%>
        <div class="card" style="width: 18rem;">
            <form>
                <input type="hidden" name="prodname" value="laptop3">
                <input type="hidden" name="cat" value="notebook">
                <input type="hidden" name="price" value="2000000">
                <img src="https://images.unsplash.com/photo-1618424181497-157f25b6ddd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFwdG9wJTIwY29tcHV0ZXJ8ZW58MHx8MHx8&w=1000&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Laptop3</h5>
                    <input type="submit" class="btn btn-primary w-100" value="상세정보">
                    <button onclick="addToCart(2)" class="btn btn-primary w-100 mt-3">CART</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function addToCart(num)
    {
        let form = document.forms[num];
        let prodname = form[0].value;
        let cat = form[1].value;
        let price = form[2].value;
        let isOK = confirm("상품명 : " + prodname + "\n카테고리 : " + cat + "\n가격 : " + price)
        if(isOK)
        {
            form.action="05addCart.jsp";
            form.submit();
        }
    }
</script>
</body>
</html>
