<%@ Page Language="C#" AutoEventWireup="true" CodeFile="route1.aspx.cs" Inherits="ui_router_test_route1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <h1>Route 1</h1>
    <hr/>
    <a data-ui-sref=".list">Show List</a>
    <div data-ui-view></div>
    </form>
</body>
</html>
