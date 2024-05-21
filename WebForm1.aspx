<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"   
Inherits="WebFormsControlls.WebControls" %>  
<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Calculator</title> 
    <script type="text/javascript">
        function checkValidNumber() {
            var num1 = document.getElementById('Number1');
            var num2 = document.getElementById('Number2');
            if (isNaN(num1)) {
                alert("X is Not a Number");
            }
            if (isNaN(num2)) {
                alert("Y is Not a Number");
            }
        }
        
        function isNumberKey(e) {
            
            var x = e.which || e.keycode;
            if ((x >= 48 && x <= 57 || x==46 )) {
                return true;
            }
            alert('Please Enter a Number');
            return false;
        }
    </script>
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>
            <h1>Calculator</h1>
        </div>
        <div> 
            <br />
            <asp:Label ID="labeNumerb1" runat="server" Text="X = "></asp:Label>  
            <asp:TextBox ID="Number1" runat="server" ToolTip="Enter Number1" placeholder="Only Numbers are allowed" onkeypress="return isNumberKey(event)" ></asp:TextBox> 
            <asp:Label ID="labelNumber2" runat="server" Text="Y = "></asp:Label>  
            <asp:TextBox ID="Number2" runat="server" ToolTip="Enter Number2" placeholder="Only Numbers are allowed" onkeypress="return isNumberKey(event)"></asp:TextBox>  
            <asp:DropDownList ID="Operations" runat="server" AppendDataBoundItems="true">
            <asp:ListItem Value="+" Text="+" />
            <asp:ListItem Value="-" Text="-" />
            <asp:ListItem Value="*" Text="*" />
            <asp:ListItem Value="/" Text="/" />
            </asp:DropDownList>
            <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
            <asp:Label ID="labelResult" runat="server" Text="<b>Result:</b>"></asp:Label>
            <asp:Label ID="userInput" runat="server"></asp:Label> 
        </div>  
        
                           
    </form>
    <br />
      
     
</body>  
</html> 