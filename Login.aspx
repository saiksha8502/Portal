<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Placement Portal</title>
   <style>
        body{
            background-color : mistyrose;   
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
            height: 900px;
            
        }
        .container-right{
            border:3px solid darkolivegreen;
            border-bottom-left-radius:25px;
            border-top-left-radius:25px;
            height:350px;
            width:250px;
            box-shadow:0px 10px 5px 0px;
            margin-left:180px;
            margin-top:-350px;
        }
        .container-left{
            border:3px solid darkolivegreen;
            border-bottom-right-radius:25px;
            border-top-right-radius:25px;
            height:350px;
            width:250px;
            box-shadow:0px 10px 5px 0px;
            margin-right:320px;
        }

        .textlabel,.textbox{
            padding-top:100px;
        }
        h3{
          text-decoration:underline;
          text-decoration-color:blue;
        }
        .custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 35px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
        .btn-login {
            color: white;
            background-color:darkolivegreen;
            width:80px;
            height:35px;
            border-radius:10px;
        }
        .btn-login:hover{
            color:black;
            background-color:darkseagreen;
            width:80px;
            height:35px;
            border-radius:10px;
            border-color:black;
        }

.btn-forgot {
            color: white;
            background-color:darkolivegreen;
            width:170px;
            height:35px;
            border-radius:10px;
        }
.btn-forgot:hover {
        color: black;
        background-color: darkseagreen;
        width: 170px;
        height: 35px;
        border-radius: 10px;
        border-color: black;
       }
.btn-signup {
            color: white;
            background-color:darkolivegreen;
            width:80px;
            height:35px;
            border-radius:10px;
        }
        .btn-signup:hover{
            color:black;
            background-color:darkseagreen;
            width:80px;
            height:35px;
            border-radius:10px;
            border-color:black;
        }
    </style>

    <link rel="stylesheet"  href="theme/bootstrap.min.css" />
    <link rel="stylesheet" href="vaccination.css" />
</head>
<body>
 <form id="form1" runat="server">
        <center>
        <div class="container"> 
            <h3>Student Placement Portal</h3><br /><br/>
       <div class="container-left">
           <div class="textlabel">
           </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
            </div>
            <br />
             <div>
                <asp:Label ID="Label1" runat="server" Text="Password:"></asp:Label> 
             </div>
                <br />
                <br />
            </div>              
        <div class="container-right">
            <div class="textbox">
            <div>
                <asp:TextBox ID="usernameTXT" CssClass="textcss" placeholder="Enter UserName" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>              
                <asp:TextBox ID="PasswordTXT" CssClass="textcss" type="password"  placeholder="Enter password" runat="server"></asp:TextBox><br />
                <br />              
                <asp:Button ID="Button2" runat="server" CssClass="btn-login" OnClick="Login_Click" Text="Login" /><br /><br /><br /><br /><br /><br />
                <div class="col-md-6">
                    <asp:Button ID="Button4" runat="server" CssClass="btn-signup" OnClick="SignUP" Text="SignUp" />
                </div>                 
                 <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" CssClass="btn-forgot" OnClick="FP_Click" Text="Forgot Password" />
                     </div>
            </div>
            </div>
        </div>
             </div>           
    </form>
</body>
</html>

