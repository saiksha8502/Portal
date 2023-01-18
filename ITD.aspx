<%@ Page Title="" Language="C#" MasterPageFile="~/Placement_Portal/SPP.master" AutoEventWireup="true" CodeFile="ITD.aspx.cs" Inherits="Placement_Portal_ITD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> Interview Details </title>
    <style>
        body{
            background-color:#07d7eb;
            border: 5px solid black;
            height: 800px;
        }
         .container-left{
            border:3px solid black;
            border-bottom-right-radius:25px;
            border-top-right-radius:25px;
            height:451px;
            width:250px;
            box-shadow:0px 10px 5px 0px;
            margin-right:320px;
            margin-top:80px;
            background: #ffffff;
        }
        .container-right{
            border:3px solid black;
            border-bottom-left-radius:25px;
            border-top-left-radius:25px;
            height:456px;
            width:260px;
            box-shadow:0px 10px 5px 0px;
            margin-left:187px;
            margin-top:-451px;
            background: #ffffff;
        }
        .textlabel, .textbox {
            padding-top: 80px;
        }
        h3{
          font-size:large;
          text-decoration:underline;
          text-decoration-color:black;
        }
        .btn-save {
            color: white;
            background-color:palevioletred;
            width:80px;
            height:35px;
            border-radius:10px;
        }
        .btn-save:hover{
            color:white;
            background-color:darkcyan;
            width:80px;
            height:35px;
            border-radius:10px;
            border-color:#32f10a;
        }

        .btn-cancel{
             color: black;
            background-color:mistyrose;
            width:80px;
            height:35px;
            border-radius:10px;
        }
          .btn-cancel:hover{
            color:white;
            background-color:#970041;
            width:80px;
            height:35px;
            border-radius:10px;
            border-color:#de0101;
        }
          .LBLSTyle{
            font-size:large;
            font-weight:600;
            color:#5f0505;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            
        }
        .dropdowncss{
            width:178px;
            height:25px;
        }
    </style>
</head>
<body>
    <form id="form1">
        <center>
            <h3>INTERVIEW DETAILS </h3>      
        <div>
            <div class="container-left"> 
                <div class="textlabel">
                    <asp:Label ID="Label1" CssClass="LBLSTyle" runat="server" Text="Name:"></asp:Label><br /><br />
                    <asp:Label ID="Label2" CssClass="LBLSTyle" runat="server" Text="EmailID:"></asp:Label><br /><br />
                    <asp:Label ID="Label3" CssClass="LBLSTyle" runat="server" Text="DeptID:"></asp:Label><br /><br />
                    <asp:Label ID="Label4" CssClass="LBLSTyle" runat="server" Text="SemID:"></asp:Label><br /><br />
                    <asp:Label ID="Label5" CssClass="LBLSTyle" runat="server" Text="Scheduled?"></asp:Label><br /><br />                    
                    <asp:Label ID="Label7" CssClass="LBLSTyle" runat="server" Text="Company Name:"></asp:Label><br /><br />
                </div>
            </div>
            <div class="container-right">
                <div class="textbox"> </div>
                    <asp:TextBox ID="NameTXT" class="dropdowncss" runat="server" placeholder=" Enter Student Name"></asp:TextBox><br /><br /> 
                    <asp:TextBox ID="EmailIDTXT" class="dropdowncss" runat="server" placeholder=" Enter Mail ID"></asp:TextBox><br /><br />            
                    <asp:DropDownList runat="server" class="dropdowncss" ID="ddldepid" AutoPostBack="false" ></asp:DropDownList>
         <br /><br />             
                    <asp:DropDownList runat="server" class="dropdowncss" ID="ddlsemid" AutoPostBack="false" >
                  <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                      <asp:ListItem>8</asp:ListItem>
              </asp:DropDownList><br /><br />                       
                    <asp:DropDownList runat="server" class="dropdowncss" ID="ddlscheduled" AutoPostBack="false" >
                  <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                  <asp:ListItem>No</asp:ListItem>            
                    </asp:DropDownList><br /><br />
                    <asp:TextBox ID="CompanyNameTXT" class="dropdowncss" runat="server" placeholder=" Enter Company Name"></asp:TextBox><br /><br />
                    <asp:Button ID="Button1" runat="server" CssClass="btn-save" OnClick="Save" Text="Save" /> 
                    <asp:Button ID="Button2" runat="server" CssClass="btn-cancel" Text="Cancel" />
            </div>
        </div>
            </center>
    </form>
</body>
</html>
</asp:Content>

