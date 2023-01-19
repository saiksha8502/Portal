<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Placement_Portal_Forgot" %>
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style>
        body{
            background-color : moccasin;   
        }
        .textcss{
            border:1px solid green;
            border-radius:8px;
            font-size:16px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container{
            border: 5px solid brown;
            font-size: 20px;
            font-family:Arial;
            height: 600px;
        }
        .container-right{
            border:3px solid orange;
            border-bottom-left-radius:25px;
            border-top-left-radius:25px;
            height:350px;
            width:250px;
            box-shadow:0px 10px 5px 0px;
            margin-left:187px;
            margin-top:-355px;
        }
        .container-left{
            border:3px solid orange;
            border-bottom-right-radius:25px;
            border-top-right-radius:25px;
            height:350px;
            width:250px;
            box-shadow:0px 10px 5px 0px;
            margin-right:320px;
        }
        .textlabel,.textbox{
            padding-top:80px;
        }
        h3{
          text-decoration:underline;
          text-decoration-color:blue
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
<div class="container"> 
            <h3> Forgot Password</h3>
       <div class="container-left">
           <div class="textlabel">

           </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
            </div>
            <br />
             <div>
                <asp:Label ID="Label1" runat="server" Text="MailID:"></asp:Label> 

             </div>
                <br />
           <div> 
             <asp:Label ID="Label2" runat="server" Text="Create New Password"></asp:Label>
               </div>
                <br />
           <div>
              <asp:Label ID="Label4" runat="server" Text="Confirm New Password"></asp:Label>
           </div>
            </div>       
       
        <div class="container-right">
            <div class="textbox">
            <div>
                <asp:TextBox ID="usernameTXT" CssClass="textcss" placeholder="Enter UserName" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="mailidTXT" CssClass="textcss"  placeholder="Enter MailId" runat="server"></asp:TextBox><br />
                <br />

            </div>
            <div>
                <asp:TextBox ID="newpasswordTXT" CssClass="textcss" type="password" placeholder="Enter New Password" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="confirmpasswordTXT" CssClass="textcss" type="password" placeholder="Confirm New Password" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Save" />
                <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Cancel"/>
            </div>
            <br />
            </div>
        </div>
             </div>
            </center>
    </form>
</body>
</html>
