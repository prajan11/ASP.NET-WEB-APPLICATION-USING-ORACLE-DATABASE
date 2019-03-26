<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Web_Application.Students" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Students</h1>
            <br />
            <div style="margin-left: 9px">
            <asp:FormView ID="FormView1" runat="server" class="form-inline" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    <div class="Insert-form bg-primary">
                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="STUDENT ID:  :" runat="server" />
                                <asp:TextBox ID="STUDENT_IDTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                   
                            </div>
                        
                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="FIRST NAME  :" runat="server" />
                
                                <asp:TextBox ID="TextBox1"  CssClass="form-control input-sm" runat="server" Text='<%# Bind("FIRST_NAME") %>' />

                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="LAST NAME  :" runat="server" />
                                <asp:TextBox ID="LAST_NAMETextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="DATE OF BIRTH  :" runat="server" />
                                <asp:TextBox ID="DATE_OF_BIRTHTextBox" ApplyFormatInEditMode="true" DataFormatString="{0:dd-M-yyyy}" CssClass="form-control input-sm" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="ADDRESS  :" runat="server" />
                                <asp:TextBox ID="ADDRESSTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("ADDRESS") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="EMAIL  :" runat="server" />
                                <asp:TextBox ID="EMAILTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("EMAIL") %>' />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="CONTACT NO  :" runat="server" />
                                <asp:TextBox ID="CONTACT_NOTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("CONTACT_NO") %>' />
                            </div>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                </EditItemTemplate>
                
                     
                <InsertItemTemplate>
                    <div class="Insert-form bg-primary">
                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="STUDENT ID  :" runat="server" />
                            <asp:TextBox ID="STUDENT_IDTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                   
                        </div>
                        
                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="FIRST NAME  :" runat="server" />
                
                            <asp:TextBox ID="TextBox1"  CssClass="form-control input-sm" runat="server" Text='<%# Bind("FIRST_NAME") %>' />

                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="LAST NAME  :" runat="server" />
                            <asp:TextBox ID="LAST_NAMETextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("LAST_NAME") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="DATE OF BIRTH  :" runat="server" />
                            <asp:TextBox ID="DATE_OF_BIRTHTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="ADDRESS  :" runat="server" />
                            <asp:TextBox ID="ADDRESSTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("ADDRESS") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="EMAIL  :" runat="server" />
                            <asp:TextBox ID="EMAILTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("EMAIL") %>' />
                        </div>

                        <div class="form-vertical-components">
                            <asp:Label CssClass="student-form-labels" Text="CONTACT NO  :" runat="server" />
                            <asp:TextBox ID="CONTACT_NOTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("CONTACT_NO") %>' />
                        </div>

                        <div class="insert-padding">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
        
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
                
                
                &nbsp;<asp:LinkButton ID="NewButton" class="btn btn-primary InCaDelBtn" runat="server" CausesValidation="False" CommandName="New" Text="Add New Student" />
                </ItemTemplate>
            </asp:FormView>
        </div>

        </div>

        <br />
        <div style="margin-left: 60px">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed customize-grid-students table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Smaller">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="DATE_OF_BIRTH" DataFormatString="{0:dd-M-yyyy}" ApplyFormatInEditMode="true" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle CssClass="btn btn-success"></ControlStyle>

                        <ItemStyle CssClass="edit-delete-btn" HorizontalAlign="Center"  />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger edit-delete-btn"></ControlStyle>
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
        </div>
        <div style="margin-left: 120px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;ADDRESS&quot;, &quot;EMAIL&quot;, &quot;CONTACT_NO&quot;) VALUES (:STUDENT_ID, :FIRST_NAME, :LAST_NAME, :DATE_OF_BIRTH, :ADDRESS, :EMAIL, :CONTACT_NO)" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;ADDRESS&quot; = :ADDRESS, &quot;EMAIL&quot; = :EMAIL, &quot;CONTACT_NO&quot; = :CONTACT_NO WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="CONTACT_NO" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="CONTACT_NO" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
       
    </div>
</asp:Content>



