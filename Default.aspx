<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" 
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="">
        $( "#target" ).keydown(function() {
          alert( "Handler for .keydown() called." );
        });

        $( "#other" ).click(function() {
          $( "#target" ).keydown();
        });

    </script>

</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<link href="css/revolver.css" type="text/css" rel="stylesheet" />

    <h2>
        ASDF
    </h2>

    <input id="target" type="text" value="Hello there"/>
    <div id="other">
      Trigger the handler
    </div>

    <div class="loader">

    <div class="inner">
      </div>
    </div>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
