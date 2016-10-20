<%@ Page Title="Todo Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoDetails.aspx.cs" Inherits="COMP229_F2016_MidTerm_300878140.TodoDetails" %>
<%-- Name:Anmol Sharma
     Student ID: 300878140
     Date:19 October,2016 
     TodoDetails.aspx file --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

       <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Todo Details</h1>
                <h5>All Fields are required</h5>
                <br />

                <div class="form-group">
                    <label class="control-label" for="TodoNameTextBox">Todo Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TodoNameTextBox" 
                        placeholder="Todo Name" required="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="TodoNotesTextBox">Todo Description</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TodoNotesTextBox" 
                        placeholder="Todo Notes"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label  for="completeCheckBox">Completed</label>
                    <asp:CheckBox runat="server" CssClass="form-control" ID="completCheckBox" />
                </div>

                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click1"/>
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                        OnClick="SaveButton_Click"/>
                </div>
            </div>
        </div>
    </div>
     
</asp:Content>
