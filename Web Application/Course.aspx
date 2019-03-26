<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Web_Application.Course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Courses</h1>
        </div>

        <div style="margin-left: -1px;">
            <asp:FormView ID="FormView1" CssClass="form-inline" runat="server" DataKeyNames="COURSE_CODE" DataSourceID="SqlDataSource1">
                

                <InsertItemTemplate>
                    <div class="Insert-form bg-primary">
                        <div class="form-vertical-components">
                            <asp:Label CssClass="courses-form-labels" Text="COURSE CODE  :" runat="server" />
                            <asp:TextBox ID="COURSE_CODETextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("COURSE_CODE") %>' />
                   
                        </div>
                        
                        <div class="form-vertical-components">
                            <asp:Label CssClass="courses-form-labels" Text="COURSE NAME  :" runat="server" />
                
                              <asp:TextBox ID="COURSE_NAMETextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("COURSE_NAME") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="courses-form-labels" Text="COURSE LEADER  :" runat="server" />

                            <asp:DropDownList ID="DropDownList2" runat="server" width="155px" class="form-control" DataSourceID="SqlDataSource3" DataTextField="MODULE_LEADER_NAME" DataValueField="MODULELEADER_ID" SelectedValue='<%# Bind("COURSE_LEADER") %>'>
                            </asp:DropDownList>
                        </div>
                        <div class="form-vertical-components">
                            <asp:Label CssClass="courses-form-labels" Text="CREDIT HOUR  :" runat="server" />
                            <asp:TextBox ID="CREDIT_HOURTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("CREDIT_HOUR") %>' />
                        </div>

                        <div class="insert-padding">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
        
                    </div>
                    

               
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                    &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary InCaDelBtn" runat="server" CausesValidation="False" CommandName="New" Text="Add New Course" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <br />
        <div style="margin-left: 0px">
            <asp:GridView ID="GridView1" CssClass="table  " runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_CODE" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    
                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                    <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
                    <asp:BoundField DataField="COURSE_LEADER" HeaderText="COURSE_LEADER" SortExpression="COURSE_LEADER" />
                    <asp:TemplateField HeaderText="COURSE_LEADER_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" Enabled="False" runat="server" DataSourceID="SqlDataSource2" DataTextField="MODULE_LEADER_NAME" DataValueField="STAFF_ID" SelectedValue='<%# Bind("COURSE_LEADER") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="MODULE_LEADER_NAME" DataValueField="MODULELEADER_ID" SelectedValue='<%# Bind("COURSE_LEADER") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle CssClass="btn btn-success"></ControlStyle>

                        <ItemStyle BorderStyle="None" CssClass="edit-delete-btn" HorizontalAlign="Center"  />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSE_CODE&quot; = :COURSE_CODE" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;COURSE_CODE&quot;, &quot;COURSE_NAME&quot;, &quot;COURSE_LEADER&quot;, &quot;CREDIT_HOUR&quot;) VALUES (:COURSE_CODE, :COURSE_NAME, :COURSE_LEADER, :CREDIT_HOUR)" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSE_NAME&quot; = :COURSE_NAME, &quot;COURSE_LEADER&quot; = :COURSE_LEADER, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR WHERE &quot;COURSE_CODE&quot; = :COURSE_CODE">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_CODE" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_CODE" Type="String" />
                    <asp:Parameter Name="COURSE_NAME" Type="String" />
                    <asp:Parameter Name="COURSE_LEADER" Type="Decimal" />
                    <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COURSE_NAME" Type="String" />
                    <asp:Parameter Name="COURSE_LEADER" Type="Decimal" />
                    <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
                    <asp:Parameter Name="COURSE_CODE" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;FIRST_NAME&quot;||' '||&quot;LAST_NAME&quot; AS &quot;MODULE_LEADER_NAME&quot; FROM &quot;STAFF&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT FIRST_NAME ||' '|| LAST_NAME AS &quot;MODULE_LEADER_NAME&quot;, MODULELEADER_ID FROM STAFF JOIN MODULE_LEADER ON Staff.Staff_ID = MODULE_LEADER.MODULELEADER_ID"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>


