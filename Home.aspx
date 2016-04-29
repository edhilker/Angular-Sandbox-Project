<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd  ">

<html xmlns="http://www.w3.org/1999/xhtml  ">

<head id="Head1" runat="server"><meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js  "></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/vendor/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="js/vendor/modernizr-2.8.3.min.js"></script>

    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"> 
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/normalize.css" />
    <style>
        table, th, td
        {
            border: 1px solid grey;
            border-collapse: collapse;
            padding: 5px;
        }
        table th
        {
            background-color: #274257;
            color: #fff;
        }

        table tr:nth-child(odd)
        {
            background-color: #f1f1f1;
        }

        table tr:nth-child(even)
        {
            background-color: #ffffff;
        }
    </style>
</head>

<script type="text/javascript">
    var app = angular.module("myApp", []);

    app.controller("myCntrl", function ($scope, $http) {

        $scope.studentorder = "StudentID";

        $scope.studentName = "";

        $scope.Save = function () {
            var httpreq = {
                method: 'POST',
                url: 'Home.aspx/Save',
                headers: {
                    'Content-Type': 'application/json; charset=utf-8',
                    'dataType': 'json'
                },
                data: { StudentName: $scope.studentName }
            }

            $http(httpreq).success(function (response) {
                $scope.fillList();
                alert("Saved successfully.");
            })

        };

        $scope.Delete = function (SID) {
            if (confirm("Are you sure want to delete?")) {
                var httpreq = {
                    method: 'POST',
                    url: 'Home.aspx/Delete',
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8',
                        'dataType': 'json'
                    },
                    data: { StudentID: SID }
                }

                $http(httpreq).success(function (response) {
                    $scope.fillList();
                    alert("Deleted successfully.");
                })
            }
        };

        $scope.fillList = function () {
            $scope.studentName = "";

            var httpreq = {
                method: 'POST',
                url: 'Home.aspx/GetList',
                headers: {
                    'Content-Type': 'application/json; charset=utf-8',
                    'dataType': 'json'
                },
                data: {}
            }

            $http(httpreq).success(function (response) {
                $scope.StudentList = response.d;
            })

        };
        $scope.fillList();
    });
</script>

<body>
    <form id="form1" runat="server">
    <header>...</header>
    <nav>...</nav>
    <article>
          <section>
               ...
          </section>
    </article>
    <aside>...</aside>
    <div data-ng-app="myApp" data-ng-controller="myCntrl">
        <table>
            <tr>
                <td>
                    Student Name :
                </td>
                <td>
                    <input type="text" id="txtStudentName" data-ng-model="studentName" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" value="Save" data-ng-click="Save()" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table>
            <thead>
                <tr>
                    <th>
                        StudentID
                    </th>
                    <th>
                        StudentName
                    </th>
                    <th>
                    </th>
                </tr>
            </thead>
            <tr data-ng-repeat="student in StudentList | orderBy : studentorder ">
                <td data-ng-bind="student.StudentID"></td>
                <td data-ng-bind="student.StudentName"></td>
                <td>
                    <a href="#" data-ng-click="Delete(student.StudentID)">Delete</a>
                </td>
            </tr>
        </table>
    </div>
    
    </form>
</body>
</html>

