<%--
  Created by IntelliJ IDEA.
  User: 刘志君
  Date: 2019/9/13
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .d1{
            height: 410px;
            width: 600px;
            margin:170px auto;
        }

    </style>
</head>
<body>
<div class="d1">
    <form class="form-horizontal" onsubmit="return dd()" name="forms">
        <div class="form-group">
            <label for="inputpassword1" class="col-sm-2 control-label">旧密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputpassword1" placeholder="Email">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword2" class="col-sm-2 control-label">新密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">确认密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>
        <br><br>
        <div class="form-group p1">
            <div class="col-sm-offset-2 col-sm-10 p1">
                <div class="col-sm-offset-3 col-md-5 p1"><button type="submit" class="btn btn-info btn-lg btn-block">提交</button></div>
            </div>
        </div>
    </form>
</div>
</body>
<<script>
    function dd() {
        var d1=$("#inputpassword1").val();
        var d2=$("#inputPassword2").val();
        var d3=$("#inputPassword3").val();
        alert(d1);
        if (d1==""){
            alert("旧密码不能为空");
            return false;
        }else if(d2==""){
            alert("新密码不能为空");
            return false;
        }else if(d3==""){
            alert("确认密码不能为空");
            return false;
        }else if(d2!=d3){
            alert("新密码与确认密码不一致！");
            return false;
        }else{
            $.get("http://localhost:8080/Liberary_war_exploded/passwordServlet",{"password1":d1,"password2":d2},function (data) {
                alert(data.chuan);
                return forms.submit();
            },"json");
        }
    }


</script>
</html>
