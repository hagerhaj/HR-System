<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HolidayTransferForm2.aspx.cs" Inherits="Promotions.HolidayTransferForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Simplified Arabic";
            color: #CC0066;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 101px;
            font-weight: bold;
            font-family: "Simplified Arabic";
            font-size: medium;
            color: #000099;
        }
        .style4
        {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        تحويل الاجازات</p>
    <table class="style2">
        <tr>
            <td class="style3">
                رقم الموظف</td>
            <td>
                <asp:TextBox ID="txtno" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                اسم الموظف</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                تاريخ الترحيل</td>
            <td>
                <asp:TextBox ID="txtdatetrans" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                عدد الايام المرحلة</td>
            <td>
                <asp:TextBox ID="txtdaysnotrans" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                سنة الاجازة</td>
            <td>
                <asp:TextBox ID="txtyear" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="color: #FF0000" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="style4" Height="30px" 
                    Text="حفظ" Width="70px" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="style4" Height="30px" 
                    Text="تعديل" Width="70px" onclick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="style4" Height="30px" 
                    Text="حذف" Width="70px" onclick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" CssClass="style4" Height="30px" 
                    Text="بحث" Width="70px" onclick="Button4_Click" />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    style="font-size: medium; font-weight: 700" Text="اضافة" Width="57px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="3" DataKeyNames="EmpNo,TransDate" 
                    DataSourceID="SqlDataSource1" PageSize="4" 
                    style="font-size: medium; font-family: 'Simplified Arabic'" Width="523px" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="EmpNo" HeaderText="رقم الموظف" ReadOnly="True" 
                            SortExpression="EmpNo" />
                        <asp:BoundField DataField="TransDate" HeaderText="تاريخ الترحيل" 
                            ReadOnly="True" SortExpression="TransDate" />
                        <asp:BoundField DataField="TransDaysNo" HeaderText="عدد الايام المرحلة" 
                            SortExpression="TransDaysNo" />
                        <asp:BoundField DataField="HolidayYear" HeaderText="سنة الاجازة المرحلة" 
                            SortExpression="HolidayYear" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" 
                    SelectCommand="SELECT * FROM [HolidayTransfer]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
