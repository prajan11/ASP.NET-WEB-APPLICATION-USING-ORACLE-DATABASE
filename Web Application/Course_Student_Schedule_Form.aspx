<%@ Page Title="Course-Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course_Student_Schedule_Form.aspx.cs" Inherits="Web_Application.Course_Student_Schedule_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .form-control{
            display: inline-block;
        }
        .edit-assignment-title{
           
            
            
            border-radius:4px;
            font-weight:bolder;
            padding:9px;
            
            background:#1b5384;
            color:navajowhite;
            font-size:15px;
            
        }
        .more-edit{
            margin-bottom:-10px;
            padding-left:70px;
        }

        .extra{
            width:490px;
        }
    </style>

    <div id="form1" runat="server" >
        <div>
            <h1 class="title-edit more-edit" >Student-Course-Assignment Details</h1>
        </div>
        
        <br />
        <br />
            
        <div>
            <table class="customize-table" style="border-collapse: separate; border-spacing: 1.3em; margin-left:-70px;">
                <tr>
                    <td class="edit-assignment-title">Performance of all the students in the selected module</td>
                    <td class="edit-assignment-title extra">Details and Performance of a particular student in selected module</td>
                </tr>
                
                <tr>
                    <td class="customize-rows">
                        <div class="DropDownBand">
                            <span class="TextBeforeDropDown" style="color: black; font-weight:bold;font-size:21px;">Select Course:</span><asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="COURSE_NAME" DataValueField="COURSE_CODE">
                        </asp:DropDownList>
                        </div>
      
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,COURSE_CODE,ASSIGNMENT_NO" DataSourceID="SqlDataSource3"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Smaller">
                                <Columns>
                                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                                    <asp:TemplateField HeaderText="STUDENT_NAME">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList5" Enabled="False" runat="server" DataSourceID="SqlDataSource7" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                                    <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="ASSIGNMENT_NO" ReadOnly="True" SortExpression="ASSIGNMENT_NO" />
                                    <asp:BoundField DataField="ASSIGNMENT_MARKS" HeaderText="ASSIGNMENT_MARKS" SortExpression="ASSIGNMENT_MARKS" />
                                    <asp:BoundField DataField="COMPLETED_YEAR" HeaderText="COMPLETED_YEAR" SortExpression="COMPLETED_YEAR" />
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
           
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;FIRST_NAME&quot; || ' ' ||  &quot;LAST_NAME&quot; AS &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

                    </td>
                    <td class="customize-rows extra" style="display:block;position:relative">
                        <div class="DropDownBand">
                            <span class="TextBeforeDropDown" style="color: black;font-weight:bold;font-size:21px;">Select Student ID:</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList2"  runat="server" DataSourceID="SqlDataSource4" DataTextField="STUDENT_ID" DataValueField="STUDENT_ID" AutoPostBack="True" Width="223px">
                        </asp:DropDownList>
                        </div>
                        <br />
                        
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;FIRST_NAME&quot; || ' ' || &quot;LAST_NAME&quot; AS &quot;STUDENT_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;ADDRESS&quot;, &quot;EMAIL&quot;, &quot;CONTACT_NO&quot; FROM &quot;STUDENT&quot; WHERE (&quot;STUDENT_ID&quot; = :STUDENT_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;STUDENT_ID&quot; FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <span class="StudentTextBeforeDropDown">Name of Student :</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList7" runat="server" DataSourceID="SqlDataSource8" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" Width="219px">
                        </asp:DropDownList>

                        <br />
                        <br />
                        <span class="StudentTextBeforeDropDown">Date of Birth :</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList9" runat="server" DataTextFormatString="{0:yyyy/mm/dd}" DataSourceID="SqlDataSource8" DataTextField="DATE_OF_BIRTH" DataValueField="STUDENT_ID" Width="219px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        
                        <span class="StudentTextBeforeDropDown">Address :</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList10" runat="server" DataSourceID="SqlDataSource8" DataTextField="ADDRESS" DataValueField="STUDENT_ID" Width="219px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <span class="StudentTextBeforeDropDown">Email :</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList11" runat="server" DataSourceID="SqlDataSource8" DataTextField="EMAIL" DataValueField="STUDENT_ID" Width="219px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <span class="StudentTextBeforeDropDown">Contact :</span>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList12" runat="server" DataSourceID="SqlDataSource8" DataTextField="CONTACT_NO" DataValueField="STUDENT_ID" Width="219px">
                        </asp:DropDownList>
                        <br />
                        
                        <br />
                        <asp:GridView ID="GridView2" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STUDENT_ID,COURSE_CODE,ASSIGNMENT_NO" DataSourceID="SqlDataSource5" Font-Size="Small">
                            <Columns>
                                <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                                <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="ASSIGNMENT_NO" ReadOnly="True" SortExpression="ASSIGNMENT_NO" />
                                <asp:BoundField DataField="ASSIGNMENT_MARKS" HeaderText="ASSIGNMENT_MARKS" SortExpression="ASSIGNMENT_MARKS" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE ((&quot;COURSE_CODE&quot; = :COURSE_CODE) AND (&quot;STUDENT_ID&quot; = :STUDENT_ID))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1"  Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2"  Name="STUDENT_ID" PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                        
                        
                            <span class="TextBeforeDropDown">Sum of Assignment Marks :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="EXPR1" DataValueField="EXPR1" Height="24px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT SUM(ASSIGNMENT_MARKS) AS EXPR1 FROM STUDENT_COURSE_ASSIGNMENT WHERE (COURSE_CODE = :COURSE_CODE) AND (STUDENT_ID = :STUDENT_ID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        
                        <br />
                        <br />
                            <span class="TextBeforeDropDown">Aggregate/Total Marks Obtained :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource6" DataTextField="EXPR1" DataValueField="EXPR1">
                            </asp:DropDownList>

                            &nbsp;&nbsp;&nbsp;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT ROUND(AVG(ASSIGNMENT_MARKS), 2) AS EXPR1 FROM STUDENT_COURSE_ASSIGNMENT WHERE (COURSE_CODE = :COURSE_CODE) AND (STUDENT_ID = :STUDENT_ID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
        

                    </td>
                </tr>
            </table>
        </div>
        
        

    </div>
</asp:Content>

