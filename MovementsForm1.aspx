<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovementsForm1.aspx.cs" Inherits="HrSrc.MovementsForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 93px;
            font-weight: bold;
            color: #0033CC;
            font-size: large;
            font-family: "Simplified Arabic";
        }
        .style3
        {
            width: 93px;
            height: 21px;
            font-weight: bold;
            color: #0033CC;
            font-size: large;
            font-family: "Simplified Arabic";
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            font-weight: bold;
            font-size: medium;
            color: #CC33FF;
            background-color: #00FFFF;
        }
        .style6
        {
            width: 93px;
            font-weight: bold;
            color: #0033CC;
            font-size: large;
            font-family: "Simplified Arabic";
            height: 35px;
        }
        .style7
        {
            height: 35px;
        }
        .style8
        {
            width: 93px;
            font-weight: bold;
            color: #0033CC;
            font-size: large;
            font-family: "Simplified Arabic";
            height: 40px;
        }
        .style9
        {
            height: 40px;
        }
        .style10
        {
            font-size: medium;
        }
        .style11
        {
            font-size: xx-large;
            font-family: "Simplified Arabic";
        }
        .style12
        {
            font-size: large;
            font-family: "Simplified Arabic";
            color: #000099;
        }
        .style13
        {
            width: 93px;
            font-weight: bold;
            color: #0033CC;
            font-size: large;
            font-family: "Simplified Arabic";
            height: 37px;
        }
        .style14
        {
            height: 37px;
        }
        .style15
        {
            color: #000066;
            font-size: large;
            font-family: "Simplified Arabic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style10">
        <strong>هيئة سكك حديد السودان</strong></p>
    <p class="style11">
        <strong>التنقـــلات</strong></p>
    <table class="style1">
        <tr>
            <td class="style3">
                رقم الموظف</td>
            <td class="style4">
                <asp:TextBox ID="Txtno" runat="server" Width="149px" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                اسم الموظف</td>
            <td class="style7">
                <asp:TextBox ID="TransDate" runat="server" Width="291px" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                تاريخ النقل</td>
            <td class="style7">
                <asp:TextBox ID="txttrandate" runat="server" Width="291px" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                من ادارة</td>
            <td>
                <asp:DropDownList ID="TxtDepartment" runat="server" Height="35px" Width="205px">
                    <asp:ListItem>قاطرات</asp:ListItem>
                    <asp:ListItem>نظم</asp:ListItem>
                    <asp:ListItem>مشروعات</asp:ListItem>
                    <asp:ListItem>الحسابات</asp:ListItem>
                    <asp:ListItem>الهندسة</asp:ListItem>
                    <asp:ListItem>العقارات</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp; <strong><span class="style12">&nbsp; الى ادارة</span></strong>&nbsp;&nbsp;
                <asp:DropDownList ID="TxtToDepartment" runat="server" Height="34px" 
                    Width="205px" style="font-weight: 700; font-size: medium">
                    <asp:ListItem>قاطرات</asp:ListItem>
                    <asp:ListItem>نظم</asp:ListItem>
                    <asp:ListItem>مشروعات</asp:ListItem>
                    <asp:ListItem>الحسابات</asp:ListItem>
                    <asp:ListItem>الهندسة</asp:ListItem>
                    <asp:ListItem>العقارات</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13">
                الاقليم</td>
            <td class="style14">
                <asp:DropDownList ID="TxtRegion" runat="server" Height="35px" Width="205px">
                    <asp:ListItem>الشمالى</asp:ListItem>
                    <asp:ListItem>الاوسط</asp:ListItem>
                    <asp:ListItem>الجنوبى</asp:ListItem>
                    <asp:ListItem>الشرقى</asp:ListItem>
                    <asp:ListItem>الغربى</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="style10">ا</span><span 
                    class="style12">لى الاقليم</span><span class="style10">&nbsp; </span>
                <asp:DropDownList ID="TxtToRegion" runat="server" Height="35px" Width="205px" 
                    CssClass="style10">
                    <asp:ListItem>الشمالى</asp:ListItem>
                    <asp:ListItem>الاوسط</asp:ListItem>
                    <asp:ListItem>الجنوبى</asp:ListItem>
                    <asp:ListItem>الشرقى</asp:ListItem>
                    <asp:ListItem>الغربى</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                القسم</td>
            <td class="style7">
                <asp:DropDownList ID="TxtSection" runat="server" Height="35px" Width="205px">
                    <asp:ListItem>الورشة مرمة</asp:ListItem>
                    <asp:ListItem>الورشة عربات</asp:ListItem>
                    <asp:ListItem>الاليات الثقيلة</asp:ListItem>
                    <asp:ListItem>الماهيات</asp:ListItem>
                    <asp:ListItem>الشبكات</asp:ListItem>
                    <asp:ListItem>الخطوط</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp; ا<span class="style12"><strong>لى</strong></span> <strong>
                <span class="style12">القسم</span><span class="style10">&nbsp; </span>
                <asp:DropDownList ID="TxtToSection" runat="server" Height="35px" Width="205px" 
                    CssClass="style10">
                    <asp:ListItem>الورشة مرمة</asp:ListItem>
                    <asp:ListItem>الورشة عربات</asp:ListItem>
                    <asp:ListItem>الاليات الثقيلة</asp:ListItem>
                    <asp:ListItem>الماهيات</asp:ListItem>
                    <asp:ListItem>الشبكات</asp:ListItem>
                    <asp:ListItem>الخطوط</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style2">
                سبب النقل</td>
            <td>
                <asp:TextBox ID="TxtCauseTrans" runat="server" Width="200px" Height="30px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                ا<span class="style15"><strong>لوظيفة </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="TxtOccupation" runat="server" Height="35px" Width="205px">
                    <asp:ListItem>مبرمج</asp:ListItem>
                    <asp:ListItem>محاسب</asp:ListItem>
                    <asp:ListItem>مهندس</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; color: #CC3300; font-size: medium; font-family: 'Simplified Arabic'" 
                    Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style9">
                <asp:Button ID="CmdSave" runat="server" CssClass="style5" Height="36px" 
                    onclick="CmdSave_Click" Text="حفظ" Width="70px" />
                <asp:Button ID="CmdUpdate" runat="server" CssClass="style5" Height="36px" 
                    Text="تعديل" Width="70px" onclick="CmdUpdate_Click" />
                <asp:Button ID="CmdDelete" runat="server" CssClass="style5" Height="36px" 
                    Text="حذف" Width="70px" onclick="CmdDelete_Click" />
                <asp:Button ID="CmdSearch" runat="server" CssClass="style5" Height="36px" 
                    Text="بحث" Width="70px" onclick="CmdSearch_Click" />
                <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
                    style="font-weight: 700; font-size: medium; color: #FF0066; background-color: #00FF99" 
                    Text="اضافة" Width="71px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpNo" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="4" 
                    style="font-size: medium; font-family: 'Simplified Arabic'; color: #CC0066; margin-left: 62px;" 
                    Width="810px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="EmpNo" HeaderText="رقم الموظف" ReadOnly="True" 
                            SortExpression="EmpNo" />
                        <asp:BoundField DataField="Department" HeaderText="من الادارة" 
                            SortExpression="Department" />
                        <asp:BoundField DataField="ToDepartment" HeaderText="الى ادارة" 
                            SortExpression="ToDepartment" />
                        <asp:BoundField DataField="Region" HeaderText="من الاقليم" 
                            SortExpression="Region" />
                        <asp:BoundField DataField="ToRegion" HeaderText="الى الاقليم" 
                            SortExpression="ToRegion" />
                        <asp:BoundField DataField="Section" HeaderText="من القسم" 
                            SortExpression="Section" />
                        <asp:BoundField DataField="ToSection" HeaderText="الى القسم" 
                            SortExpression="ToSection" />
                        <asp:BoundField DataField="Reasons" HeaderText="سبب النقل" 
                            SortExpression="Reasons" />
                        <asp:BoundField DataField="Occupation" HeaderText="الوظيفة" 
                            SortExpression="Occupation" />
                        <asp:BoundField DataField="TransDate" HeaderText="تاريخ النقل" 
                            SortExpression="TransDate" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                    SelectCommand="SELECT * FROM [Movements]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" 
                    SelectCommand="SELECT * FROM [Movements]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
