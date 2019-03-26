<%@ Page Title="Departments" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="Departments.aspx.cs" Inherits="Web_Application.Departments" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .paddingControl{
            
           
        }
    </style>
    
    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Departments</h1>
        </div>

        <div style="margin-left: 2px">
            <asp:FormView ID="FormView1" runat="server" class="form-inline" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
           
                
                <InsertItemTemplate>
                    <div class="Insert-form bg-primary">
                        <div class="form-vertical-components">
                            <asp:Label CssClass="form-labels" Text="DEPARTMENT ID  :" runat="server" />
                            <asp:TextBox ID="DEPARTMENT_IDTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                   
                        </div>
                        
                        <div class="form-vertical-components">
                            <asp:Label CssClass="form-labels" Text="DEPARTMENT NAME  :" runat="server" />
                
                            <asp:TextBox ID="DEPARTMENT_NAMETextBox" CssClass="form-control  input-sm" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="form-labels" Text="INSTITUTE  :" runat="server" />
                            <asp:DropDownList ID="DropDownList2" CssClass="form-control " runat="server" DataSourceID="SqlDataSource2" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_ID"  SelectedValue='<%# Bind("INSTITUTE_ID")  %>' >
                            </asp:DropDownList>
                        </div>

                        <div class="insert-padding">
                            <asp:LinkButton ID="InsertButton" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
        
                    </div>
                    
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                    <asp:LinkButton class="btn btn-primary InCaDelBtn paddingControl" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Department" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <br />
        <div style="margin-left: 0px">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover table-responsive " AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" Height="201px"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="INSTITUTE_ID" HeaderText="INSTITUTE_ID" SortExpression="INSTITUTE_ID" />
                    <asp:TemplateField HeaderText="INSTITUTE_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" Enabled="false" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_ID" SelectedValue='<%# Bind("INSTITUTE_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle CssClass="btn btn-success"></ControlStyle>
                        <ItemStyle BorderStyle="None" CssClass="edit-delete-btn" HorizontalAlign="Center"  />
                    </asp:CommandField>

                    <asp:CommandField ButtonType="Button" ControlStyle-CssClass="edit-delete-btn"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        
        <div style="margin-left: 200px">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;INSTITUTE_NAME&quot;, &quot;INSTITUTE_ID&quot; FROM &quot;ACADEMIC_INSTITUTE&quot;"></asp:SqlDataSource>
        </div>
        <div style="margin-left: 200px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENTS&quot;" DeleteCommand="DELETE FROM &quot;DEPARTMENTS&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENTS&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;INSTITUTE_ID&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :INSTITUTE_ID)" UpdateCommand="UPDATE &quot;DEPARTMENTS&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;INSTITUTE_ID&quot; = :INSTITUTE_ID WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="INSTITUTE_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="INSTITUTE_ID" Type="Decimal" />
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>


