<%@ Page Title="Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Web_Application.Staff" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Staff</h1>
        </div>

         <div style="margin-left: 12px">
            <asp:FormView ID="FormView1" CssClass="form-inline" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
                
                <InsertItemTemplate>
                    <div class="Insert-form bg-primary">
                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="STAFF ID  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="FIRST NAME  :" runat="server" />
                
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox1" runat="server" Text='<%# Bind("FIRST_NAME") %>' />

                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="LAST NAME  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox2" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="CONTACT NO  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox3" runat="server" Text='<%# Bind("CONTACT_NO") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="EMAIL  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox4" runat="server" Text='<%# Bind("EMAIL") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="DATE OF BIRTH  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox5" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="DESIGNATION  :" runat="server" />
                                <asp:TextBox CssClass="form-control input-sm" ID="TextBox6" runat="server" Text='<%# Bind("DESIGNATION") %>' />
                            </div>
                
                            <div class="insert-padding">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                &nbsp;<asp:LinkButton ID="NewButton" class="btn btn-primary InCaDelBtn" runat="server" CausesValidation="False" CommandName="New" Text="Add New Staff" />
                </ItemTemplate>
            </asp:FormView>
        </div>
         <br />
        <div style="margin-left:48px; font-family: Arial, Helvetica, sans-serif;">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed customize-grid table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DATE_OF_BIRTH"  HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" DataFormatString="{0:dd-M-yyyy}" />
                    <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle CssClass="btn btn-success"></ControlStyle>

                        <ItemStyle CssClass="edit-delete-btn" HorizontalAlign="Center"  />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger edit-delete-btn"></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle HorizontalAlign="Center" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" BorderStyle="None" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;CONTACT_NO&quot;, &quot;EMAIL&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;DESIGNATION&quot;) VALUES (:STAFF_ID, :FIRST_NAME, :LAST_NAME, :CONTACT_NO, :EMAIL, :DATE_OF_BIRTH, :DESIGNATION)" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;CONTACT_NO&quot; = :CONTACT_NO, &quot;EMAIL&quot; = :EMAIL, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;DESIGNATION&quot; = :DESIGNATION WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="CONTACT_NO" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="CONTACT_NO" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime"  />
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
</asp:Content>

   

