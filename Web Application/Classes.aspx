<%@ Page Title="Classes" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="Web_Application.Classes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1" runat="server">
        <div>
            <h1 class="title-edit">Classes</h1>
        </div>
        <br />
        <div style="margin-left: 00px">
            <asp:FormView ID="FormView1" runat="server" CssClass="form-inline" DataKeyNames="ROOM_ID" DataSourceID="SqlDataSource1" >
                
                <InsertItemTemplate>

                    <div class="Insert-form bg-primary">
                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="ROOM ID  :" runat="server" />
                                <asp:TextBox ID="ROOM_IDTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("ROOM_ID") %>' /> 
                                <br />
                                <asp:RequiredFieldValidator runat="server" CssClass="ColorOfErrorMessage" id="reqRoomID" controltovalidate="ROOM_IDTextBox" errormessage="Please enter room ID." />
                            </div>

                            <div class="form-vertical-components">
                                <asp:Label CssClass="student-form-labels" Text="ROOM   :" runat="server" />
                                <asp:TextBox ID="ROOMTextBox" CssClass="form-control input-sm" runat="server" Text='<%# Bind("ROOM") %>' />
                                <br />
                                <asp:RequiredFieldValidator runat="server" CssClass="ColorOfErrorMessage" id="reqRoomName" controltovalidate="ROOMTextBox" errormessage="Please enter classroom name." />
                            </div>
                        <div class="insert-padding">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-success InCaDelBtn" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-danger InCaDelBtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary InCaDelBtn" runat="server" CausesValidation="False" CommandName="New" Text="Add New Class" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <br />

        <div style="margin-left: 0px">

            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-condensed table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="ROOM_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    
                    <asp:BoundField DataField="ROOM_ID" HeaderText="ROOM_ID" ReadOnly="True" SortExpression="ROOM_ID" >
                    <ItemStyle HorizontalAlign="Left" Font-Names="Century" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ROOM" HeaderText="ROOM" SortExpression="ROOM" >
                    <ItemStyle HorizontalAlign="Left" Font-Names="Century" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowHeader="True">
                        <ControlStyle CssClass="btn btn-success"></ControlStyle>

                        <ItemStyle CssClass="edit-delete-btn "  />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" >
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" DeleteCommand="DELETE FROM &quot;CLASS&quot; WHERE &quot;ROOM_ID&quot; = :ROOM_ID" InsertCommand="INSERT INTO &quot;CLASS&quot; (&quot;ROOM_ID&quot;, &quot;ROOM&quot;) VALUES (:ROOM_ID, :ROOM)" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLASS&quot;" UpdateCommand="UPDATE &quot;CLASS&quot; SET &quot;ROOM&quot; = :ROOM WHERE &quot;ROOM_ID&quot; = :ROOM_ID">
            <DeleteParameters>
                <asp:Parameter Name="ROOM_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ROOM_ID" Type="Decimal" />
                <asp:Parameter Name="ROOM" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ROOM" Type="String" />
                <asp:Parameter Name="ROOM_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
</asp:Content>


