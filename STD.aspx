<%@ Page Title="" Language="C#" MasterPageFile="~/Placement_Portal/SPP.master" AutoEventWireup="true" CodeFile="STD.aspx.cs" Inherits="Placement_Portal_STD" %>


   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> Student Details </title>
    <style>
       body{
            background-color:moccasin;
            border: 5px solid black;
            height: 800px;
        }
         .container-left{
            border:3px solid black;
            border-bottom-right-radius:25px;
            border-top-right-radius:25px;
            height:568px;
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
            height:567px;
            width:260px;
            box-shadow:0px 10px 5px 0px;
            margin-left:187px;
            margin-top:-567px;
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
        <h3> STUDENT DETAILS</h3>
        <div>
            <div class="container-left">
                <div class="textlabel">
                    <asp:Label ID="Label1" CssClass="LBLSTyle" runat="server" Text="Name:"></asp:Label> <br /><br />
                    <asp:Label ID="Label2" CssClass="LBLSTyle" runat="server" Text="College ID:"></asp:Label> <br /><br />
                    <asp:Label ID="Label3" CssClass="LBLSTyle" runat="server" Text="Dept ID:"></asp:Label> <br /><br />                   
                    <asp:Label ID="Label4" CssClass="LBLSTyle" runat="server" Text="Section:"></asp:Label> <br /><br />
                    <asp:Label ID="Label5" CssClass="LBLSTyle" runat="server" Text="Graduation Year:"></asp:Label> <br /><br />
                    <asp:Label ID="Label6" CssClass="LBLSTyle" runat="server" Text="Gender:"></asp:Label> <br /><br />
                    <asp:Label ID="Label7" CssClass="LBLSTyle" runat="server" Text="Mobile No:"></asp:Label> <br /><br />
                    <asp:Label ID="Label8" CssClass="LBLSTyle" runat="server" Text="College Mail ID:"></asp:Label> <br /><br />
                    <asp:Label ID="Label9" CssClass="LBLSTyle" runat="server" Text="SEM ID:"></asp:Label> <br /><br />
                </div>
            </div>
              <div class="container-right">
                <div class="textbox">
            <asp:TextBox ID="student_nameTXT" runat="server" class="dropdowncss" placeholder=" Enter Student Name"></asp:TextBox> <br /><br />
            <asp:TextBox ID="college_IdTXT" runat="server" class="dropdowncss" placeholder=" Enter College ID"></asp:TextBox><br /><br />            
                  <asp:DropDownList runat="server" class="dropdowncss" ID="ddldepid" AutoPostBack="false" ></asp:DropDownList>
         <br /><br />  
            <asp:TextBox ID="SectionTXT" runat="server" class="dropdowncss" placeholder=" Enter Section"></asp:TextBox><br /><br />            
            <asp:TextBox ID="Graduation_yearTXT" runat="server" class="dropdowncss" placeholder=" Enter Year of Graduation"></asp:TextBox><br /><br />            
             <asp:DropDownList runat="server" class="dropdowncss" ID="DropDownGender" AutoPostBack="false" >
                 <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>Female</asp:ListItem>
                  <asp:ListItem>male</asp:ListItem>
                  <asp:ListItem>Others</asp:ListItem>
             </asp:DropDownList> <br /><br />            
            <asp:TextBox ID="Mobile_noTXT" runat="server" class="dropdowncss" placeholder=" Enter MobileNo"></asp:TextBox><br /><br />            
            <asp:TextBox ID="Mail_IDTXT" runat="server" class="dropdowncss" placeholder="Enter your college mail ID"></asp:TextBox><br /><br />
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
            <asp:Button ID="Button1" runat="server" CssClass="btn-save" OnClick="Save" Text="Save" />
            <asp:Button ID="Button2" runat="server" CssClass="btn-cancel" Text="Cancel" OnClick="Cancel" />
            </div>
                  </div>
        </div>
            </center>
        <br /><br /><br /><br />
           <center>
           <asp:GridView ID="gv" runat="server"  AutoGenerateColumns="false"
            style="overflow-Y:scroll;overflow:scroll" Width="50%" Height="5%"
            DataKeyNames="Regno" 
            OnPageIndexChanging="GridView1_PageIndexChanging" 
            OnRowCancelingEdit="CancelGrid" 
            OnRowDeleting="DeleteGrid" 
            OnRowEditing="EditGrid" 
            OnRowCommand="AddGrid"    
            OnRowUpdating="UpdateGrid"
      Allowpaging="false" pagesizing="true" ShowFooter="false"  RowStyle-HorizontalAlign="Center" >
       <RowStyle BackColor="#feefce" ForeColor="black" />
   <HeaderStyle BackColor="#ff9700" Font-Bold="True" ForeColor="White" height="50px" BorderColor="White"  />          
    <HeaderStyle BackColor="#0669e4" Font-Bold="True" ForeColor="White"  />
           <RowStyle BackColor="White" />    
    <Columns>
       <asp:TemplateField HeaderText="Reg No:" HeaderStyle-HorizontalAlign="Center">  
   <ItemTemplate> 
    <asp:Label ID="lblRegNo" runat="server" Text='<%# Bind("RegNo") %>'></asp:Label> 
   </ItemTemplate>          
           <FooterTemplate>
 <asp:TextBox ID="RegNoTXT" runat="server" placeholder=" Enter Reg No."></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
   <asp:TemplateField HeaderText="Name:" HeaderStyle-HorizontalAlign="Center">    
    <ItemTemplate> 
    <asp:Label ID="lblNAME" runat="server" Text='<%# Bind("SNAME") %>'></asp:Label> 
   </ItemTemplate>           
           <FooterTemplate>
 <asp:TextBox ID="SNAMETXT" runat="server" placeholder=" Enter Student Name"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
<asp:TemplateField HeaderText="Section:" HeaderStyle-HorizontalAlign="Center">     
   <ItemTemplate> 
    <asp:Label ID="lblSection" runat="server" Text='<%# Bind("Sec") %>'></asp:Label> 
   </ItemTemplate>          
           <FooterTemplate>
 <asp:TextBox ID="SecTXT" runat="server" placeholder=" Enter Section"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
   <asp:TemplateField HeaderText="Dept ID:" HeaderStyle-HorizontalAlign="Center">    
    <ItemTemplate> 
    <asp:Label ID="lblDeptID" runat="server" Text='<%# Bind("DeptID") %>'></asp:Label> 
   </ItemTemplate>           
           <FooterTemplate>
 <asp:TextBox ID="DeptIDTXT" runat="server" placeholder=" Enter Dept ID"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
           <asp:TemplateField HeaderText="Graduation Year:" HeaderStyle-HorizontalAlign="Center">    
   <ItemTemplate> 
    <asp:Label ID="lblGradYear" runat="server" Text='<%# Bind("GraduationYear") %>'></asp:Label> 
   </ItemTemplate>           
           <FooterTemplate>
 <asp:TextBox ID="GraduationYearTXT" runat="server" placeholder=" Enter Graduation Year"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
           <asp:TemplateField HeaderText="Gender:" HeaderStyle-HorizontalAlign="Center">     
   <ItemTemplate> 
    <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label> 
   </ItemTemplate>           
           <FooterTemplate>
 <asp:TextBox ID="GenderTXT" runat="server" placeholder=" Enter Gender"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
           <asp:TemplateField HeaderText="MobileNo:" HeaderStyle-HorizontalAlign="Center">     
   <ItemTemplate> 
    <asp:Label ID="lblMobileNo" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label> 
   </ItemTemplate>
           <EditItemTemplate>
            <asp:TextBox ID="MobileNoTXT" runat="server" placeholder=" Enter Mobile No"></asp:TextBox>
           </EditItemTemplate>
           <FooterTemplate>
 <asp:TextBox ID="MobileNoTXT" runat="server" placeholder=" Enter Mobile No"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
           <asp:TemplateField HeaderText="MailID:" HeaderStyle-HorizontalAlign="Center">    
    <ItemTemplate> 
    <asp:Label ID="lblMailID" runat="server" Text='<%# Bind("MailID") %>'></asp:Label> 
   </ItemTemplate>
           <EditItemTemplate>
            <asp:TextBox ID="MailIDTXT" runat="server" placeholder=" Enter Mail ID"></asp:TextBox>
           </EditItemTemplate>
           <FooterTemplate>
 <asp:TextBox ID="MailIDTXT" runat="server" placeholder=" Enter Mail ID"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
        <asp:TemplateField HeaderText="SemID:" HeaderStyle-HorizontalAlign="Center">     
   <ItemTemplate> 
    <asp:Label ID="lblSemID" runat="server" Text='<%# Bind("SemID") %>'></asp:Label> 
   </ItemTemplate>           
           <FooterTemplate>
 <asp:TextBox ID="SemIDTXT" runat="server" placeholder=" Enter Sem ID"></asp:TextBox>
           </FooterTemplate>
</asp:TemplateField> 
<asp:TemplateField HeaderText="Action">
    <ItemTemplate>
   <asp:ImageButton ID="imgbtnEdit" runat="server" title="Edit" CommandName="Edit" ImageUrl="~/Placement_Portal/Images/Edit.jpg" Height="20" Width="20"/>
   &nbsp;  &nbsp;
   <asp:ImageButton ID="imgbtnDelete" runat="server" title="Delete" Width="20" Height="20" CommandName="Delete" ImageUrl="Images/delete.jpg"/></ItemTemplate>
    <EditItemTemplate>
         <asp:ImageButton ID="imgbtnUpdate" runat="server"  Width="20" Height="20" title="Update" CommandName="Update" ImageUrl="Images/Update.jpg"/>
         <asp:ImageButton ID="imgbtnCancel" runat="server"  Width="20" Height="20" title="Cancel"  CommandName="Cancel" ImageUrl="Images/cancel.jpg"/>
    </EditItemTemplate>
    <FooterTemplate>
<asp:LinkButton ID="lbtnAdd" runat="server" CommandName="ADD" Text="Add" Width="100px"></asp:LinkButton>
                            </FooterTemplate>
</asp:TemplateField> 
    </Columns>
        </asp:GridView> </center><br />  
    </body>
</html>
</asp:Content>

