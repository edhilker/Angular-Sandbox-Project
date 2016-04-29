<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Html5Layout.aspx.cs" Inherits="Html5Layout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HTML5</title>
<meta charset="utf-8">
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

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->

<style>
body {font-family: Verdana, sans-serif; font-size:0.8em;}
    header, nav, section, article, footer
    {border:1px solid grey; margin:5px; padding:8px;}
    nav ul {margin:0; padding:0;}
    nav ul li {display:inline; margin:5px;}

body {
    font-family: Helvetica,Arial;
    font-size: 10pt;
}

ul {
    margin:0;
    padding:0;
}

li {
    margin:0;
    padding:0;
    list-style: none;
    text-align: center;
    line-height:27px;
    cursor: pointer;
    border-radius: 4px;
    border:1px solid #111;
    background-color: #2581cc;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0B5BA1), to(#012238));
    background-image: -moz-linear-gradient(19% 75% 90deg,#012238, #0B5BA1);
    box-shadow: inset 0 1px 0 0 #a5b9d9;
}

li:hover {
    background-color: #458cff;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0D6CBF), to(#023F69));
    background-image: -moz-linear-gradient(19% 75% 90deg,#023F69, #0D6CBF)
}

li:active {
    background-color: #333;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#666666), to(#111111));
    background-image: -moz-linear-gradient(19% 75% 90deg,#111111, #666666)
}

li:hover {
    background-color: #458cff;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0D6CBF), to(#023F69));
    background-image: -moz-linear-gradient(19% 75% 90deg,#023F69, #0D6CBF)
}

li:active {
    background-color: #333;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#666666), to(#111111));
    background-image: -moz-linear-gradient(19% 75% 90deg,#111111, #666666)
}

.main {
    float: left;
    margin-top:5px;
    width:78px;
}

.sub {
    margin:0;
    width:120px;
    background-color: #220630;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#6C1299), to(#220630));
    background-image: -moz-linear-gradient(19% 75% 90deg,#220630, #6C1299)
}

.sub:hover {
    background-color: #450C61;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#8C17C7), to(#450C61));
    background-image: -moz-linear-gradient(19% 75% 90deg,#450C61, #8C17C7)
}

.sub:active {
    background-color: #111;
    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#666666), to(#111111));
    background-image: -moz-linear-gradient(19% 75% 90deg,#111111, #666666)
}

.btn {
    color:#fff;
    text-decoration: none;
}

.fullwidth {
    /* inline-block allows the anchor tag to fill
       the entire width of the list item */
    display:inline-block;
    width:100%;
}


</style>

</head>


<script type="text/javascript">
//    var app = angular.module("rgMenu", []);

//    app.controller("MenuController", function ($scope, $http) {

//        $scope.items = [
//    { "itemId": 1, "title": "Google", "description": "Google Search Engine",
//        "sublinks": [
//            { "title": "Google", "href": "http://google.com/", "target": "_blank" },
//            { "title": "Play", "href": "http://play.google.com/", "target": "_blank" },
//            { "title": "Plus", "href": "http://plus.google.com/", "target": "_blank" }
//    ]
//    },
//    { "itemId": 2, "title": "Yahoo", "description": "Yahoo Search Engine",
//        "sublinks": [
//            { "title": "Yahoo", "href": "http://yahoo.com/", "target": "_blank" },
//            { "title": "Sports", "href": "http://sports.yahoo.com/", "target": "_blank" },
//            { "title": "News", "href": "http://news.yahoo.com/", "target": "_blank" }
//        ]
//    },
//    { "itemId": 3, "title": "Bing", "description": "Bing Search Engine",
//        "sublinks": [
//            { "title": "Bing", "href": "http://www.bing.com", "target": "_blank" },
//            { "title": "Entertainment", "href": "http://www.bing.com/entertainment", "target": "_blank" },
//            { "title": "Videos", "href": "http://www.bing.com/videos/browse?FORM=L8SP7", "target": "_blank" }
//         ]
//    },
//    { "itemId": 4, "title": "Dogpile", "description": "Dogpile Search Engine",
//        "sublinks": [
//             { "title": "Dogpile", "href": "http://www.dogpile.com", "target": "_blank" },
//             { "title": "FAQ", "href": "http://www.dogpile.com/info.dogpl.t6.1/support/Faqs", "target": "_blank" },
//             { "title": "Contact", "href": "http://m.dogpile.com/support/contactus", "target": "_blank" }
//        ]
//    }
//    ];

//        // Defaults
//        $scope.sublinks = null;
//        $scope.activeItem = null;

//        // Default submenu left padding to 0
//        $scope.subLeft = { 'padding-left': '0px' };

//        /*
//        * Set active item and submenu links
//        */
//        $scope.showSubMenu = function (item, pos) {
//            // Move submenu based on position of parent
//            $scope.subLeft = { 'padding-left': (80 * pos) + 'px' };
//            // Set activeItem and sublinks to the currectly
//            // selected item.
//            $scope.activeItem = item;
//            $scope.sublinks = item.sublinks;
//        };

//    });

</script>

<script type="text/javascript">
    var app = angular.module("myApp", []);

    app.controller("MenuController", function ($scope, $http) {

        $scope.items = [
    { "itemId": 1, "title": "Google", "description": "Google Search Engine",
        "sublinks": [
            { "title": "Google", "href": "http://google.com/", "target": "_blank" },
            { "title": "Play", "href": "http://play.google.com/", "target": "_blank" },
            { "title": "Plus", "href": "http://plus.google.com/", "target": "_blank" }
    ]
    },
    { "itemId": 2, "title": "Yahoo", "description": "Yahoo Search Engine",
        "sublinks": [
            { "title": "Yahoo", "href": "http://yahoo.com/", "target": "_blank" },
            { "title": "Sports", "href": "http://sports.yahoo.com/", "target": "_blank" },
            { "title": "News", "href": "http://news.yahoo.com/", "target": "_blank" }
        ]
    },
    { "itemId": 3, "title": "Bing", "description": "Bing Search Engine",
        "sublinks": [
            { "title": "Bing", "href": "http://www.bing.com", "target": "_blank" },
            { "title": "Entertainment", "href": "http://www.bing.com/entertainment", "target": "_blank" },
            { "title": "Videos", "href": "http://www.bing.com/videos/browse?FORM=L8SP7", "target": "_blank" }
         ]
    },
    { "itemId": 4, "title": "Dogpile", "description": "Dogpile Search Engine",
        "sublinks": [
             { "title": "Dogpile", "href": "http://www.dogpile.com", "target": "_blank" },
             { "title": "FAQ", "href": "http://www.dogpile.com/info.dogpl.t6.1/support/Faqs", "target": "_blank" },
             { "title": "Contact", "href": "http://m.dogpile.com/support/contactus", "target": "_blank" }
        ]
    }
    ];

        // Defaults
        $scope.sublinks = null;
        $scope.activeItem = null;

        // Default submenu left padding to 0
        $scope.subLeft = { 'padding-left': '0px' };

        /*
        * Set active item and submenu links
        */
        $scope.showSubMenu = function (item, pos) {
            // Move submenu based on position of parent
            $scope.subLeft = { 'padding-left': (80 * pos) + 'px' };
            // Set activeItem and sublinks to the currectly
            // selected item.
            $scope.activeItem = item;
            $scope.sublinks = item.sublinks;
        };

    });


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
    
    <header >
        <h1>HTML5</h1>
    </header>

    <nav>
        <ul>
          <li><a href="html5_semantic_elements.asp">HTML5 Semantic</a></li>
          <li><a href="html5_geolocation.asp">HTML5 Geolocation</a></li>
          <li><a href="html5_canvas.asp">HTML5 Graphics</a></li>
        </ul>
    </nav>

    <div data-ng-app="myApp" data-ng-controller="MenuController">

    <ul>
        <!-- Iterate over and display main menu items -->
        <li class="main btn" data-ng-repeat="item in items" data-ng-click="showSubMenu(item,$index)">
            <!--<a class="btn" >{{item.title}}</a>-->
            {{item.title}}
        </li>
    </ul>
    <div style="clear:both;"></div>

    <!-- The ng-style directive allows you to assign a style property
         to an element. Updates to the property will be immediately
         reflected in the view. See tje showSubMenu function in app.js -->
    <ul data-ng-style="subLeft">
        <!-- Iterate over and display submenu items -->
        <li class="sub" data-ng-repeat="sublink in sublinks">
            <a class="btn fullwidth" data-ng-href="{{sublink.href}}" target="{{sublink.target}}" >{{sublink.title}}</a>
        </li>
    </ul>

    <div style="clear:both;"></div>

</div>

    <section>
    <aside>.......</aside>
    <h2>Header1</h2>

    <article>

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

    <h2>Header 2</h2>
    <p>London is the capital city of England. It is the most populous city in the United Kingdom,
        with a metropolitan area of over 13 million inhabitants.</p>
    </article>

        <article>
            <p>
                <h2>
                    Article 1</h2>
                <p>
                </p>
                aris is the capital and most populous city of France.</p>
        </article>

        <article>
            <h2>Article 2</h2>
            <p>Tokyo is the capital of Japan, the center of the Greater Tokyo Area,
            and the most populous metropolitan area in the world.</p>
        </article>

        </section>

    <footer>
        <p>&copy; 2014 W3Schools. All rights reserved.</p>
    </footer>

    </form>
</body>
</html>
