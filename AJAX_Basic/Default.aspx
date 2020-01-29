<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AJAX_Basic.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX within JavaScrript</title>
    <script type="text/javascript">
        var xhr;
        window.onload = function () {
            xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        document.getElementById("output").innerHTML = xhr.responseText;
                    }
                }
            }
            var button1 = document.getElementById("button1");
            button1.onclick = clickHandler;
        }
        function clickHandler() {
            xhr.open("GET", "Handler.ashx");
            xhr.send(null);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" value="AJAX button" id="button1" />
            <p id="output" style="color:green; font-weight:bold;"></p>
        </div>
    </form>
</body>
</html>
