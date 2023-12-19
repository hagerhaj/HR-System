<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PromotionsForm1.aspx.cs" Inherits="HrSrc.PromotionsForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 111px;
            text-align: right;
            color: #000099;
            font-family: "Simplified Arabic";
            font-weight: bold;
            font-size: medium;
        }
        .style5
        {
            direction: ltr;
            text-align: right;
            width: 111px;
            color: #000099;
            font-family: "Simplified Arabic";
            font-weight: bold;
            font-size: medium;
        }
        .style6
        {
            width: 715px;
        }
        .style7
        {
            font-weight: bold;
            font-size: medium;
            color: #66FF33;
            background-color: #CC3300;
        }
        .style8
        {
            font-size: x-large;
            font-family: "Simplified Arabic";
            color: #990099;
        }
        .style9
        {
            font-family: "Simplified Arabic";
            font-size: xx-large;
            text-decoration: underline;
            color: #006600;
        }
        .style10
        {
            color: #66FF33;
            background-color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style9">
        <strong>هيئة سكك حديد السودان</strong></p>
    <p class="style8">
        <strong>الترقيات</strong></p>
    <p>
        <table class="style1">
            <tr>
                <td class="style5">
                    رقم الموظف</td>
                <td class="style6">
                    <asp:TextBox ID="Txtno" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    اسم الموظف</td>
                <td class="style6">
                    <asp:TextBox ID="EmpName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    تاريخ الترقية</td>
                <td class="style6">
                    <asp:TextBox ID="TxtDateProm" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    الدرجة</td>
                <td class="style6">
                    <asp:DropDownList ID="TxtScale" runat="server" Height="18px" Width="205px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    الوظيفة</td>
                <td class="style6">
                    <asp:DropDownList ID="TxtOccupation" runat="server" Height="18px" Width="205px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>مهندس</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    مجزية /غير مجزية</td>
                <td class="style6">
                    <asp:DropDownList ID="TxtMujzia" runat="server" Height="18px" Width="205px">
                        <asp:ListItem>مجزية</asp:ListItem>
                        <asp:ListItem>غير مجزية</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    نوع الترقية</td>
                <td class="style6">
                    <asp:DropDownList ID="TxtTypeProm" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="PromTypName" 
                        DataValueField="PromTypName" Height="16px" Width="205px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                        SelectCommand="SELECT [PromTypName] FROM [PromotionType]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    الادارة</td>
                <td class="style6">
                    <asp:DropDownList ID="TxtDepartment" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="DepartName" 
                        DataValueField="DepartName" Height="16px" Width="205px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                        SelectCommand="SELECT [DepartName] FROM [Departments]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" 
                        
                        style="color: #CC3300; font-size: medium; font-weight: 700; font-family: 'Segoe UI'"></asp:Label>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    <br />
                    <asp:Button ID="CmdSave" runat="server" CssClass="style7" Height="32px" 
                        Text="حفظ" Width="70px" onclick="CmdSave_Click" />
                    <asp:Button ID="CmdUpdate" runat="server" CssClass="style7" Height="32px" 
                        Text="تعديل" Width="70px" onclick="CmdUpdate_Click" />
                    <asp:Button ID="CmdDelete" runat="server" CssClass="style7" Height="32px" 
                        Text="حذف" Width="70px" onclick="CmdDelete_Click" />
                    <asp:Button ID="CmdSearch" runat="server" CssClass="style7" Height="32px" 
                        Text="بحث" Width="70px" onclick="CmdSearch_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="style10" Height="32px" 
                        onclick="Button1_Click" style="font-weight: 700; font-size: medium" 
                        Text="اضافة" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="EmpNo,PromDate" DataSourceID="SqlDataSource4" 
                        PageSize="4" Width="694px" CellPadding="4" 
                        
                        style="font-size: medium; font-family: 'Simplified Arabic'; font-weight: 700" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" ReadOnly="True" 
                                SortExpression="EmpNo" />
                            <asp:BoundField DataField="PromDate" HeaderText="PromDate" 
                                SortExpression="PromDate" ReadOnly="True" />
                            <asp:BoundField DataField="EmpScale" HeaderText="EmpScale" 
                                SortExpression="EmpScale" />
                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" 
                                SortExpression="Occupation" />
                            <asp:BoundField DataField="Mujz" HeaderText="Mujz" 
                                SortExpression="Mujz" />
                            <asp:BoundField DataField="PromType" HeaderText="PromType" 
                                SortExpression="PromType" />
                            <asp:BoundField DataField="Department" HeaderText="Department" 
                                SortExpression="Department" />
                        </Columns>
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                        SelectCommand="SELECT * FROM [Promotions]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" 
                        SelectCommand="SELECT * FROM [Promotions]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
