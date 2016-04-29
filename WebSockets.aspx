<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebSockets.aspx.cs" Inherits="WebSockets" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

<!DOCTYPE html>
  <meta charset="utf-8" />
  <title>WebSocket Test</title>
  <script language="javascript" type="text/javascript">

      var wsUri = "ws://echo.websocket.org/";
      var output;

      function init() {
          output = document.getElementById("output");
          testWebSocket();
      }

      function testWebSocket() {
          websocket = new WebSocket(wsUri);
          websocket.onopen = function (evt) { onOpen(evt) };
          websocket.onclose = function (evt) { onClose(evt) };
          websocket.onmessage = function (evt) { onMessage(evt) };
          websocket.onerror = function (evt) { onError(evt) };
      }

      function onOpen(evt) {
          writeToScreen("CONNECTED");
          doSend("WebSocket rocks");
      }

      function onClose(evt) {
          writeToScreen("DISCONNECTED");
      }

      function onMessage(evt) {
          writeToScreen('<span style="color: blue;">RESPONSE: ' + evt.data + '</span>');
          websocket.close();
      }

      function onError(evt) {
          writeToScreen('<span style="color: red;">ERROR:</span> ' + evt.data);
      }

      function doSend(message) {
          writeToScreen("SENT: " + message);
          websocket.send(message);
      }

      function writeToScreen(message) {
          var pre = document.createElement("p");
          pre.style.wordWrap = "break-word";
          pre.innerHTML = message;
          output.appendChild(pre);
      }

      window.addEventListener("load", init, false);

  </script>

  <h2>WebSocket Test</h2>

  <div id="output"></div>

    </div>
    </form>
</body>
</html>
