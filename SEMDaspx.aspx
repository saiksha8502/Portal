<%@ Page Title="" Language="C#" MasterPageFile="~/Placement_Portal/SPP.master" AutoEventWireup="true" CodeFile="SEMDaspx.aspx.cs" Inherits="Placement_Portal_SEMDaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> SEMESTER DETAILS</title>
    <style>
         body{
            background-color:#b5067c;
            border: 5px solid black;
            height: 800px;
        }
         .container-left{
            border:3px solid black;
            border-bottom-right-radius:25px;
            border-top-right-radius:25px;
            height:460px;
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
            height:462px;
            width:260px;
            box-shadow:0px 10px 5px 0px;
            margin-left:187px;
            margin-top:-460px;
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
        th{
            text-align:center!important;
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
        .btn-save {
            color: white;
            background-color:palevioletred;
            width:80px;
            height:35px;
            border-radius:10px;
        }
        .btn-save:hover{
            color:black;
            background-color:darkcyan;
            width:80px;
            height:35px;
            border-radius:10px;
            border-color:black;
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
    </style>
</head>
<body>
    <form id="form1">
        <center> 
    <h3> SEMESTER DETAILS </h3>
        <div>
            <div class="container-left"> 
                <div class="textlabel">
                    <asp:Label ID="Label7" CssClass="LBLSTyle" runat="server" Text="RegNo:"></asp:Label><br /><br />
                    <asp:Label ID="Label6" CssClass="LBLSTyle" runat="server" Text="Dept ID:"></asp:Label><br /><br />
                    <asp:Label ID="Label1" CssClass="LBLSTyle" runat="server" Text="Sem:"></asp:Label><br /><br />
                    <asp:Label ID="Label2" CssClass="LBLSTyle" runat="server" Text="CGPA:"></asp:Label><br /><br />
                    <asp:Label ID="Label3" CssClass="LBLSTyle" runat="server" Text="Backlogs:"></asp:Label><br /><br />
                    <asp:Label ID="Label4" CssClass="LBLSTyle" runat="server" Text="Active:"></asp:Label><br /><br />
                    <asp:Label ID="Label5" CssClass="LBLSTyle" runat="server" Text="Credits Earned:"></asp:Label><br /><br />
                </div>
            </div>
            <div class="container-right">
                <div class="textbox">
                      <asp:TextBox ID="RegNotxt" class="dropdowncss" runat="server" placeholder=" Enter RegNo"></asp:TextBox><br /><br />    

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
                    <asp:TextBox ID="CGPATXT" class="dropdowncss" runat="server" placeholder=" Enter CGPA"></asp:TextBox><br /><br />            
                    <asp:TextBox ID="backlogsTXT" class="dropdowncss" runat="server" placeholder=" Enter Backlogs"></asp:TextBox><br /><br />                
                    <asp:TextBox ID="activeTXT" class="dropdowncss" runat="server" placeholder=" Enter Active"></asp:TextBox><br /><br />            
                    <asp:TextBox ID="creditsTXT" class="dropdowncss" runat="server" placeholder=" Enter Credits"></asp:TextBox><br /><br />
                    
            <asp:Button ID="Button1" runat="server" CssClass="btn-save" OnClick="Save" Text="Save" />
            <asp:Button ID="Button2" runat="server" CssClass="btn-cancel" Text="Cancel" />
                     <asp:Button ID="Button3" runat="server" Visible="false" OnClick="Fetch" Text="Fetch" />
                </div>
            </div>            
        </div>
            <br /><br /><br />
       <center>
            <center>
               <asp:GridView ID="gv" runat="server"  AutoGenerateColumns="false"
            style="overflow-Y:scroll;overflow:scroll" Width="50%" Height="5%"
      Allowpaging="false" pagesizing="true" ShowFooter="false"  RowStyle-HorizontalAlign="Center" >        
    <HeaderStyle BackColor="#0669e4" Font-Bold="True" ForeColor="White" />
           <RowStyle BackColor="White" />    
    <Columns>        
         <asp:BoundField DataField="SemID" HeaderText="Sem ID" />
         <asp:BoundField DataField="CGPA" HeaderText="CGPA" />        
           <asp:BoundField DataField="Backlogs" HeaderText="Backlogs" />
        <asp:BoundField DataField="Active" HeaderText=" Active" />
         <asp:BoundField DataField="Creditsearned" HeaderText="Creditsearned" />
          <asp:BoundField DataField="DeptID" HeaderText="DeptID" />      
        <asp:BoundField DataField="RegNo" HeaderText="RegNo" />   
    </Columns>
        </asp:GridView> </center>
         <br />                  
            </center>
    </form>
</body>
</html>
</asp:Content>
