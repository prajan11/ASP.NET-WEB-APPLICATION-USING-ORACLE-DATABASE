<%@ Page Title="Teacher-Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Course.aspx.cs" Inherits="Web_Application.Teacher_Course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .bg-warning{
            background: #1b5384;
        }
    </style>

    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Teacher-Course Details</h1>
        </div>
        <br />
        <span class="TextBeforeDropDown" style="font-size:19px;">Select course : </span>
        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSE_NAME" DataValueField="COURSE_CODE" AutoPostBack="True">
        </asp:DropDownList>

        <br /><br />

        <div class="panel-heading bg-primary">
            <h3 style="margin-left: 20px">Selected Course Details</h3>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;"></asp:SqlDataSource>
        <div class="panel-body bg-warning" style="margin-left: 0px">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_CODE" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                    <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" SortExpression="COURSE_NAME" />
                    <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
                    <asp:BoundField DataField="COURSE_LEADER" HeaderText="COURSE_LEADER_ID" SortExpression="COURSE_LEADER" />
                    <asp:TemplateField HeaderText="COURSE_LEADER_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" Enabled="False" DataTextField="COURSE_LEADER_NAME" DataValueField="STAFF_ID" SelectedValue='<%# Bind("COURSE_LEADER") %>'>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;FIRST_NAME&quot; || ' ' || &quot;LAST_NAME&quot; AS &quot;COURSE_LEADER_NAME&quot;, &quot;DATE_OF_BIRTH&quot;,  &quot;EMAIL&quot;, &quot;CONTACT_NO&quot;, &quot;DESIGNATION&quot; FROM &quot;STAFF&quot;"></asp:SqlDataSource>
        &nbsp;
        <br />
        
        <div class="panel-heading bg-primary">
            <h3 style="margin-left: 20px">Teachers Assigned</h3>
        </div>

        <div  class="panel-body bg-warning" style="margin-left: 0px">
            <asp:GridView ID="GridView2" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" SortExpression="TEACHER_ID" />
                    <asp:TemplateField HeaderText="TEACHER_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="COURSE_LEADER_NAME" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DATE_OF_BIRTH">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList7" DataTextFormatString="{0:dd-M-yyyy}" Enabled="False" runat="server" DataSourceID="SqlDataSource3" DataTextField="DATE_OF_BIRTH" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" Enabled="False" runat="server" DataSourceID="SqlDataSource3" DataTextField="EMAIL" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CONTACT_NO">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList8" Enabled="False" runat="server" DataSourceID="SqlDataSource3" DataTextField="CONTACT_NO" DataValueField="STAFF_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;TEACHER_ID&quot; FROM &quot;COURSE_TEACHER_CLASS&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    &nbsp;

        <div class="panel-heading bg-primary">
            <h3 style="margin-left: 20px">Weekly Schedule Of The Selected Course</h3>
        </div>
        <div  class="panel-body bg-warning">
        <asp:GridView ID="GridView3" runat="server" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                <asp:BoundField DataField="CLASS_TYPE" HeaderText="CLASS_TYPE" SortExpression="CLASS_TYPE" />
                <asp:BoundField DataField="TIME" HeaderText="TIME" SortExpression="TIME" />
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="ROOM_ID" HeaderText="ROOM_ID" SortExpression="ROOM_ID" />
                <asp:TemplateField HeaderText="ROOM">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList9" Enabled="false" runat="server" DataSourceID="SqlDataSource6" DataTextField="ROOM" DataValueField="ROOM_ID" SelectedValue='<%# Bind("ROOM_ID") %>'>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DAY&quot;, &quot;CLASS_TYPE&quot;, &quot;TIME&quot;, &quot;TEACHER_ID&quot;, &quot;ROOM_ID&quot; FROM &quot;COURSE_TEACHER_CLASS&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLASS&quot;"></asp:SqlDataSource>
        <br />

    </div>

</asp:Content>

