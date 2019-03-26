<%@ Page Title="Teacher-Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Student.aspx.cs" Inherits="Web_Application.Teacher_Student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .bg-warning{
            background: #1b5384;
        }
    </style>
   

    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit" >Teacher-Student Details</h1>
        </div>
        <br />
        <span class="TextBeforeDropDown" style="font-size:18px;">Select name of teacher: </span><asp:DropDownList ID="DropDownList11" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="STAFF_ID" AutoPostBack="True">
        </asp:DropDownList>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT STAFF_ID, FIRST_NAME||' ' || LAST_NAME  AS NAME FROM STAFF WHERE DESIGNATION = 'Teacher'">
        </asp:SqlDataSource>
        <br />
        <br />
        <div class="panel-heading bg-primary">

            <h3 style="margin-left: 20px">Selected Teacher Details</h3>
         </div>

        <div class="panel-body bg-warning">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="597px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STAFF_ID">
                <Columns>
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" SortExpression="STAFF_ID" ReadOnly="True" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" DataFormatString="{0:yyyy/M/dd}" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Font-Names="Century" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;CONTACT_NO&quot;, &quot;EMAIL&quot;, &quot;DATE_OF_BIRTH&quot; FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList11" Name="STAFF_ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
            
        <br />
        <br />
        
        <div class="panel-heading bg-primary">
            <h3 style="margin-left: 20px">Students Possessed</h3>
        </div>

        <div class="panel-body bg-warning">

            <asp:GridView ID="GridView2" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="167px">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                    <asp:TemplateField HeaderText="STUDENT_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" Enabled="False" runat="server" DataSourceID="SqlDataSource4" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DATE_OF_BIRTH">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList5" DataTextFormatString="{0:dd-M-yyyy}" Enabled="False" runat="server" DataSourceID="SqlDataSource4" DataTextField="DATE_OF_BIRTH" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ADDRESS">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" Enabled="False" runat="server" DataSourceID="SqlDataSource4" DataTextField="ADDRESS" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>' DataTextFormatString="{0:yyyy/mm/dd}">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList7" Enabled="False" runat="server" DataSourceID="SqlDataSource4" DataTextField="EMAIL" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CONTACT_NO">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" Enabled="False" runat="server" DataSourceID="SqlDataSource4" DataTextField="CONTACT_NO" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" Font-Names="Century" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot; FROM &quot;TEACHER_STUDENT&quot; WHERE (&quot;TEACHER_ID&quot; = :STAFF_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList11" Name="STAFF_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;FIRST_NAME&quot; || ' ' || &quot;LAST_NAME&quot; AS &quot;STUDENT_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;ADDRESS&quot;, &quot;EMAIL&quot;, &quot;CONTACT_NO&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

        </div>
            
            
    </div>
</asp:Content>


