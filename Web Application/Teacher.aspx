<%@ Page Title="Teacher" Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Web_Application.Teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <style>
            .insert-padding{
                margin-left:50px;
            }
        </style>
        <div>
            <h1 class="title-edit">Teachers</h1>
        </div>
        <br />
        <div style="margin-left: -1px">
            <asp:FormView ID="FormView1" class="form-inline" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                
                <InsertItemTemplate>
                    <div class="Insert-form bg-primary">
                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="TEACHER ID  :" runat="server" />
                                <asp:DropDownList ID="DropDownList7" class="form-control" Width="100px" runat="server" DataSourceID="SqlDataSource3" DataTextField="STAFF_ID" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                                </asp:DropDownList>
                            </div>
                        <div class="insert-padding">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" class="btn btn-primary InCaDelBtn" runat="server" CausesValidation="False" CommandName="New" Text="Add New Teacher" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot; FROM &quot;STAFF&quot;  MINUS SELECT &quot;TEACHER_ID&quot; FROM TEACHER">
        </asp:SqlDataSource>
        <br />
        <div style="margin-left: 0px">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:TemplateField HeaderText="TEACHER_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" Enabled="False" runat="server" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CONTACT_NUMBER">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="CONTACT_NO" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList5" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="EMAIL" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DATE_OF_BIRTH">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" DataTextFormatString="{0:dd-M-yyyy}" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="DATE_OF_BIRTH" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                    
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;) VALUES (:TEACHER_ID)">
                <DeleteParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
        <div style="margin-left: 160px">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;FIRST_NAME&quot; || ' ' || &quot;LAST_NAME&quot; AS &quot;TEACHER_NAME&quot;, &quot;CONTACT_NO&quot;, &quot;EMAIL&quot;, &quot;DATE_OF_BIRTH&quot; FROM &quot;STAFF&quot;"></asp:SqlDataSource>
        </div>
        
        <div style="margin-left: 160px">
        </div>
    </div>
</asp:Content>
     


    

