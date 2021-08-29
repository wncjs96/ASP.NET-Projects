<%@ Page Title="ANYMATE" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Anymate.aspx.cs" Inherits="TEAMUP_FRAMEWORK_WEBFORM._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ProjectContent" runat="server">
    <div class="canvas-container canvas-board">
        <canvas id="canvas-board"></canvas>
    </div>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptHolder" runat="server">
    <script src="./Scripts/jquery.signalR-2.4.2.min.js" type="text/javascript"></script>
    <script src="./signalr/js" type="text/javascript"></script>
    <script src="./Scripts/SignalR.js" type="text/javascript"></script>
    <script src="./Scripts/canvasBoard.js" type="text/javascript"></script>
</asp:Content>
