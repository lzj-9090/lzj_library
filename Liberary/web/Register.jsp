<%--
  Created by IntelliJ IDEA.
  User: 刘志君
  Date: 2019/9/7
  Time: 16:39
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
        body,html{
            height: 100%;
            width: 100%;
        }
        .d1{
            height:13%;
            background-color: #761c19;
            color: white;
            font-size: 65px;
        }
        .d2{
            width: 700px;
            margin: 140px auto;
            border: black solid 1px;
        }
    </style>
</head>
<body>
<div class="row d1 lo">
    <div class="col-md-3">
        账户注册
    </div>
</div>
<div class="d2">
    <form class="form-horizontal" name="forms" onsubmit="return dd()">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">昵称：</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="昵称">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">邮箱：</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail3" placeholder="邮箱地址">
            </div>
        </div>
        <div class="form-group">
            <label for="birthday" class="col-sm-2 control-label">出生日期：</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" id="birthday" placeholder="出生日期">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword1" class="col-sm-2 control-label">密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword1" placeholder="输入密码">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword2" class="col-sm-2 control-label">确认密码：</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword2" placeholder="再次确认密码">
            </div>
        </div>
        <br><br>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10 p">
                <div class="col-sm-5 p"><button type="submit" class="btn btn-primary btn-lg btn-block">注册</button></div>
                <div class="col-sm-5 p"><button type="submit" class="btn btn-default btn-lg btn-block">重置</button></div>
            </div>
        </div>
    </form>
</div>
</body>
<script>
    function dd() {
        var email=$("#inputEmail3").val();
        var name=$("#name").val();
        var birthday=$("#birthday").val();
        var password1=$("#inputPassword1").val();
        var password2=$("#inputPassword2").val();
        if (email==""){
            alert("邮箱不能为空!");
            return false;
        }else if(name==""){
            alert("名称不能为空");
            return false;
        }else if(birthday==""){
            alert("年龄不能为空！");
            return false;
        }else if(password1==""){
            alert("密码不能为空");
            return false;
        }else if (password2==""){
            alert("再次密码不能为空！");
            return false;
        }else if (password2!=password1){
            alert("两次密码不一致");
            return false;
        }else {
            alert(email);
            $.get("http://localhost:8080/Liberary_war_exploded/registerServlet",
                {"email":email},
                function (data) {
                if (data.flag==true){
                    alert("成功");
                    return false;
                }else {
                    alert("邮箱已经注册过了");
                    return forms.submit();
                }

            },"json");
        }

    }
</script>
</html>
