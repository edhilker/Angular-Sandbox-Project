<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="post" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>POST</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("button").click(function () {
            $.post("post.aspx",
        {
            name: "Donald Duck",
            city: "Duckburg"
        },
        function (data, status) {
            alert("Data: " + data + "\nStatus: " + status);
        });
    });

//    $("btn1").click(function () {
//        $.get("get.aspx", function (data, status) {
//            alert("Data: " + data + "\nStatus: " + status);
//        });
//    });
});


</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<%--    <button>Send an HTTP POST request to a page and get the result back</button>
--%>
    <button id="btn1" runat="server">Send btn1</button>
    </div>
    </form>
</body>
</html>


