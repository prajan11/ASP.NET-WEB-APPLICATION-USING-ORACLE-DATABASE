<%@ Page Title="Course-Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course_Student_Schedule_Form.aspx.cs" Inherits="Web_Application.Course_Student_Schedule_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server" style="height: 896px">
        <div>
            <h1 style="margin-left: 00px">Course-Student Schedule Form</h1>
        </div>
        <br />
        <br />
        <br />

        <div>
            <table >
                <tr>
                    <td >
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="COURSE_NAME" DataValueField="COURSE_CODE">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,COURSE_CODE,ASSIGNMENT_NO" DataSourceID="SqlDataSource3" Height="162px" Width="260px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Smaller">
                                <Columns>
                                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                                    <asp:TemplateField HeaderText="FIRST_NAME">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7">
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="LAST_NAME">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource7" DataTextField="LAST_NAME" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
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
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
           
                        </asp:SqlDataSource>
                        <br />

                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

                    </td>
                    <td style="padding-left:50px; padding-top:-50px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="STUDENT_ID" DataValueField="STUDENT_ID" AutoPostBack="True">
                        </asp:DropDownList>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;STUDENT_ID&quot; FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE (&quot;COURSE_CODE&quot; = :COURSE_CODE)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STUDENT_ID,COURSE_CODE,ASSIGNMENT_NO" DataSourceID="SqlDataSource5" Font-Size="Smaller">
                            <Columns>
                                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                                <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" ReadOnly="True" SortExpression="COURSE_CODE" />
                                <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="ASSIGNMENT_NO" ReadOnly="True" SortExpression="ASSIGNMENT_NO" />
                                <asp:BoundField DataField="ASSIGNMENT_MARKS" HeaderText="ASSIGNMENT_MARKS" SortExpression="ASSIGNMENT_MARKS" />
                                <asp:BoundField DataField="COMPLETED_YEAR" HeaderText="COMPLETED_YEAR" SortExpression="COMPLETED_YEAR" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_COURSE_ASSIGNMENT&quot; WHERE ((&quot;COURSE_CODE&quot; = :COURSE_CODE) AND (&quot;STUDENT_ID&quot; = :STUDENT_ID))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <p>
                            &nbsp;</p>
                        <p>
                            Total Marks Obtained:&nbsp;&nbsp;&nbsp;&nbsp;  
            
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="EXPR1" DataValueField="EXPR1" Height="24px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT SUM(ASSIGNMENT_MARKS) AS EXPR1 FROM STUDENT_COURSE_ASSIGNMENT WHERE (COURSE_CODE = :COURSE_CODE) AND (STUDENT_ID = :STUDENT_ID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </p>
                        <br />
                        <p>
                            Aggregrate Marks:&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource6" DataTextField="EXPR1" DataValueField="EXPR1">
                            </asp:DropDownList>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT AVG(ASSIGNMENT_MARKS) AS EXPR1 FROM STUDENT_COURSE_ASSIGNMENT WHERE (COURSE_CODE = :COURSE_CODE) AND (STUDENT_ID = :STUDENT_ID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_CODE" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="STUDENT_ID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </p>
        
                    </td>
                </tr>
            </table>
        </div>
        
        </div>
        
        
</asp:Content>

