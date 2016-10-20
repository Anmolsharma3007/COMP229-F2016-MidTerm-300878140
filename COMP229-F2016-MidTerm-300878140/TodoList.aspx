<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP229_F2016_MidTerm_300878140.TodoList" %>

<%-- Name:Anmol Sharma
     Student ID: 300878140
     Date:19 October,2016 
     TodoList.aspx file --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Student Todo List</h1>
                <a href="TodoDetails.aspx" class="btn btn-success btn-sm">
                    <i class="fa fa-plus"></i> Add Todos
                </a>
                <asp:GridView ID="TodoGridView" runat="server" AutoGenerateColumns="false"  CssClass="table table-bordered table-striped table-hover" OnRowDeleting="TodoGridView_RowDeleting" DataKeyNames="TodoID">
                    <Columns>
                        <asp:BoundField DataField="TodoID" HeaderText="Todo ID" Visible="true" />
                        <asp:BoundField DataField="TodoDescription" HeaderText="Todo Name" Visible="true" />
                        <asp:BoundField DataField="TodoNotes" HeaderText="Todo Notes" Visible="true" />
                        <asp:BoundField DataField="Completed" HeaderText="Complete" Visible="true" />

                        <asp:CommandField HeaderText="EdiT" EditText="Edit" ShowEditButton="true" ButtonType="Link"
                             ControlStyle-CssClass=" btn btn-"/>
                        
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                </asp:GridView>

            </div>


        </div>
    </div>
</asp:Content>
