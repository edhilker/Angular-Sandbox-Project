<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AngularJSTutorial.aspx.cs" Inherits="AngularJSTutorial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0/angular.js"></script>--%>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="http://code.angularjs.org/1.3.0/angular-route.js"></script>
    <script src="js/script.js"></script>
</head>

<body>
    <form id="form1" runat="server">
      <div data-ng-view></div>
    </form>
</body>
</html>
