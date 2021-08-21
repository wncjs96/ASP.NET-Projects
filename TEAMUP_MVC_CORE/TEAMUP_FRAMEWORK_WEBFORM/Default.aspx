<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TEAMUP_FRAMEWORK_WEBFORM._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron canvas-container">
        <canvas class="canvas-item-hero"></canvas>

        <div class="text-over-canvas">
            <h1>ANYMATE</h1>
            <p class="lead">ANYMATE is a collaborative 2D animation application.</p>
            <p>With Anymate, you can start an animation project, draw key-frames with your friends, and publish the end result.</p>
            <p><a href="#" class="btn btn-primary btn-lg">Start Collaborating &raquo;</a></p>
        </div>
    </div>
    <script src="Scripts/canvas.js" type="text/javascript"></script>
    <div class="row">
        <div class="col-md-4">
            <h2>Create a project</h2>
            <p>
                You can create an animation project, invite friends to your session and start animating together with your friends in real time. 
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Start drawing</h2>
            <p>
                After carefully planning things out, You can pick a key frame to draw within your project. You will be able to move the key frames around and draw in-betweens if you want! 
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Publish your work</h2>
            <p>
                You can publish your work here in Anymate so that everyone else can see it. You can also download your end result.
            </p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
