<%@ Page Title="Data Search" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="MemberSearch.aspx.cs" Inherits="TEAMUP_FRAMEWORK_WEBFORM.MemberSearch" %>

<asp:Content ContentPlaceHolderID="ProjectContent" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anymateDBConnectionString %>" SelectCommand="SELECT * FROM [memberTBL]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="memberID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="memberIDLabel" runat="server" Text='<%# Eval("memberID") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPwdLabel" runat="server" Text='<%# Eval("memberPwd") %>' />
                </td>
                <td>
                    <asp:Label ID="memberEmailLabel" runat="server" Text='<%# Eval("memberEmail") %>' />
                </td>
                <td>
                    <asp:Label ID="memberNameLabel" runat="server" Text='<%# Eval("memberName") %>' />
                </td>
                <td>
                    <asp:Label ID="memberDOBLabel" runat="server" Text='<%# Eval("memberDOB") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPhoneLabel" runat="server" Text='<%# Eval("memberPhone") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="memberIDLabel1" runat="server" Text='<%# Eval("memberID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberPwdTextBox" runat="server" Text='<%# Bind("memberPwd") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberEmailTextBox" runat="server" Text='<%# Bind("memberEmail") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberNameTextBox" runat="server" Text='<%# Bind("memberName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberDOBTextBox" runat="server" Text='<%# Bind("memberDOB") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberPhoneTextBox" runat="server" Text='<%# Bind("memberPhone") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="memberIDTextBox" runat="server" Text='<%# Bind("memberID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberPwdTextBox" runat="server" Text='<%# Bind("memberPwd") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberEmailTextBox" runat="server" Text='<%# Bind("memberEmail") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberNameTextBox" runat="server" Text='<%# Bind("memberName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberDOBTextBox" runat="server" Text='<%# Bind("memberDOB") %>' />
                </td>
                <td>
                    <asp:TextBox ID="memberPhoneTextBox" runat="server" Text='<%# Bind("memberPhone") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="memberIDLabel" runat="server" Text='<%# Eval("memberID") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPwdLabel" runat="server" Text='<%# Eval("memberPwd") %>' />
                </td>
                <td>
                    <asp:Label ID="memberEmailLabel" runat="server" Text='<%# Eval("memberEmail") %>' />
                </td>
                <td>
                    <asp:Label ID="memberNameLabel" runat="server" Text='<%# Eval("memberName") %>' />
                </td>
                <td>
                    <asp:Label ID="memberDOBLabel" runat="server" Text='<%# Eval("memberDOB") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPhoneLabel" runat="server" Text='<%# Eval("memberPhone") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">memberID</th>
                                <th runat="server">memberPwd</th>
                                <th runat="server">memberEmail</th>
                                <th runat="server">memberName</th>
                                <th runat="server">memberDOB</th>
                                <th runat="server">memberPhone</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="memberIDLabel" runat="server" Text='<%# Eval("memberID") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPwdLabel" runat="server" Text='<%# Eval("memberPwd") %>' />
                </td>
                <td>
                    <asp:Label ID="memberEmailLabel" runat="server" Text='<%# Eval("memberEmail") %>' />
                </td>
                <td>
                    <asp:Label ID="memberNameLabel" runat="server" Text='<%# Eval("memberName") %>' />
                </td>
                <td>
                    <asp:Label ID="memberDOBLabel" runat="server" Text='<%# Eval("memberDOB") %>' />
                </td>
                <td>
                    <asp:Label ID="memberPhoneLabel" runat="server" Text='<%# Eval("memberPhone") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

</asp:Content>