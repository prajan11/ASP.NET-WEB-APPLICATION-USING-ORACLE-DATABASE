<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Application._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>

        .alignChart{
            margin-left:55px;
        }
        .col-md-4{
            border:1px solid black;
        }

        select{
            
              border: none !important;  /*Removes border*/
             -webkit-appearance: none;  /*Removes default chrome and safari style*/
             /*-moz-appearance: none;  /*Removes default style Firefox*/
             color:white;
             font-size: 1.5em;
             font-weight: 700;
            background: none;
        }

        .boxes{
            
            border-radius:5px;
            padding:10px;
            width:330px;
            /*height:211px;*/
            padding-left:30px;
            margin-left:20px;
            margin-right:30px;
            
            margin-top:50px;
        }

        .bg-primary{
            background-color:#d13030;
            
        }
        .bg-primary-yellow{
            background-color:#862fbc;
        }

        .bg-success{
            background-color: #78b724;
        }
        .bg-success-orange{
            background-color:#ff944d;
        }
        .bg-danger{
            background-color:#308fd3;
        }
        .bg-danger-any{
            
            background-color:  #ff4d4d;
        }

        .department-band{
            background-color:#9b1a1a;
        }

        .staff-band{
            background-color:#3c9b06;
        }

        .courses-band{
            background-color:#1262e2;
        }

        .teacher-band{
            background-color:#3f0a60;
        }

        .class-band{
            background-color:#ff6600;
        }

        .students-band{
            background-color: crimson;
           
        }

        .band {
            padding-top: 10px;
            width: 330px;
            height: 40px;
            
            margin-left: -30px;
            margin-bottom: -30px;
            position: relative;
            display: block;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            text-align: center;
        }

        

        a {
            text-decoration:none;
            color:white;
            
        }

        .small-box-footer{
            
            font-size:18px;
            
        }

        .small-box-footer:hover{
            color:white;
        }


        .box-name{
            font-size:25px;
            color:white;
            font-weight:bold;
        }

        .box-name i{
            margin-left: 10px;
            font-size: 0.8em;
        }

        .boxes p{
            height: 60px !important;
        }

        #Chart1{
            width:100%;
            height:100%;
            text-align:center;
        }
       
            
    </style>

    
    
    <!--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-success btn-lg">Learn more &raquo;</a></p>
    </div>-->

    <br />
    
    <div class="row">
        <div class="col-sm-4 boxes bg-primary">
            <h2>
                <asp:DropDownList ID="DropDownList1" CssClass="select" runat="server" DataSourceID="SqlDataSource1" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;COURSE&quot;"></asp:SqlDataSource>
            </h2>
            
            <p class="box-name">
                Departments <i class="fas fa-warehouse"></i>
            </p>

            <a href="Departments.aspx"class="small-box-footer">

                <div class="row band department-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>

        </div>

        

        <div class="col-sm-4 boxes bg-success">
            <h2>
                <asp:DropDownList ID="DropDownList2" CssClass="select" runat="server" DataSourceID="SqlDataSource2" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;STAFF&quot;"></asp:SqlDataSource>
            </h2>
            <p class="box-name">
                Staffs  <i class="fas fa-users"></i>
            </p>
            <a href="Staff.aspx"class="small-box-footer">

                <div class="row band staff-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>
            
        </div>
        <div class="col-sm-4 boxes bg-danger">
            <h2>
                <asp:DropDownList ID="DropDownList3" CssClass="select" runat="server" DataSourceID="SqlDataSource3" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;DEPARTMENTS&quot;"></asp:SqlDataSource>
            </h2>
            
            <p class="box-name">
                Courses <i class="fas fa-book-open"></i>
            </p>


            <a href="Course.aspx" class="small-box-footer">

                <div class="row band courses-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-4 boxes bg-primary-yellow">
            <h2>
                <asp:DropDownList ID="DropDownList4" CssClass="select" runat="server" DataSourceID="SqlDataSource1" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;COURSE&quot;"></asp:SqlDataSource>
            </h2>
            
            <p class="box-name"> 
                Teachers <i class="fas fa-chalkboard-teacher"></i>
            </p>
            <a href="Teacher.aspx" class="small-box-footer">

                <div class="row band teacher-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>
            
        </div>
        <div class="col-sm-4 boxes bg-success-orange">
            <h2>
                <asp:DropDownList ID="DropDownList5" CssClass="select" runat="server" DataSourceID="SqlDataSource4" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;TEACHER&quot;"></asp:SqlDataSource>
            </h2>
            
            <p class="box-name">
                Classrooms <i class="fas fa-pen-square"></i>
            </p>
            <a href="Classes.aspx"class="small-box-footer">

                <div class="row band class-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>

            
        </div>
        <div class="col-sm-4 boxes bg-danger-any">
            <h2>
                <asp:DropDownList ID="DropDownList6" CssClass="select" runat="server" DataSourceID="SqlDataSource6" DataTextField="COUNT(*)" DataValueField="COUNT(*)">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) FROM &quot;STUDENT&quot;
"></asp:SqlDataSource>
            </h2>
            
            <p class="box-name">
                Students   <i class="fas fa-user-graduate"></i>
            </p>
            <a href="Students.aspx"class="small-box-footer">

                <div class="row band students-band">
                    View Details <i class="fa fa-arrow-circle-right"></i>
                
                </div>

            </a>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <h3 class="title-edit" style="text-align:center;"><b>Data Visualization</b></h3>
    &nbsp;
    <br />
    <br />
    
    <asp:Chart ID="Chart1" runat="server" CssClass="alignChart" DataSourceID="SqlDataSource7" Width="1000px" BackHatchStyle="DottedGrid" BackImageTransparentColor="White" BackSecondaryColor="AliceBlue" BorderlineColor="Black" BorderlineDashStyle="Solid" Height="469px" BorderlineWidth="3">
        <Series>
            <asp:Series IsXValueIndexed="True" Legend="Legend1" Name="Number of staffs" XValueMember="DEPARTMENT_NAME" XValueType="String" YValueMembers="EXPR1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Interval="1"></AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 11pt, style=Bold, Underline" Name="Title1" Text="Number of staffs working in each department">
            </asp:Title>
        </Titles>
        <BorderSkin BorderColor="Maroon" PageColor="PowderBlue" />
    </asp:Chart>
    <br />
    <br />

    <br />



    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT DEPARTMENTS.DEPARTMENT_NAME, COUNT(DEPARTMENTS_STAFF.DEPARTMENT_ID) AS EXPR1 FROM 
DEPARTMENTS JOIN DEPARTMENTS_STAFF 
ON DEPARTMENTS.DEPARTMENT_ID = DEPARTMENTS_STAFF.DEPARTMENT_ID
GROUP BY DEPARTMENTS_STAFF.DEPARTMENT_ID,DEPARTMENTS.DEPARTMENT_NAME"></asp:SqlDataSource>

    <br />
    <br />
    <br />
    <asp:Chart ID="Chart2" runat="server" CssClass="alignChart" DataSourceID="SqlDataSource8" Width="1000px" BackImageTransparentColor="Transparent" BackSecondaryColor="AliceBlue" BorderlineColor="Black" BorderlineDashStyle="Solid" Height="469px" BackColor="ButtonHighlight" BorderlineWidth="3">
        <Series>
            <asp:Series Name="Number of students enrolled" XValueMember="COURSE_NAME" YValueMembers="COUNT(STUDENT_COURSE.STUDENT_ID)" YValuesPerPoint="4" Font="Arial Rounded MT Bold, 8.25pt">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Interval="1"></AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 11pt, style=Bold, Underline" Name="Title1" Text="Number of students enrolled in each course">
            </asp:Title>
        </Titles>
        <BorderSkin BorderColor="Maroon" PageColor="PowderBlue" />
    </asp:Chart>
    <br />
    <br />

    <br />

    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT Course.Course_Name, COUNT(Student_Course.Student_ID) FROM
Course JOIN Student_Course 
ON Course.Course_Code = Student_Course.Course_Code
GROUP BY Student_Course.Course_Code,Course.Course_Name"></asp:SqlDataSource>



    <br />
    <br />
    <br />

    <asp:Chart ID="Chart5" runat="server" CssClass="alignChart" DataSourceID="SqlDataSource11" Width="992px" BackHatchStyle="DottedGrid" BackImageTransparentColor="White" BackSecondaryColor="AliceBlue" BorderlineColor="Black" BorderlineDashStyle="Solid" Height="469px" Palette="EarthTones" BorderlineWidth="3">
        <Series>
            <asp:Series Name="Number of students enrolled" XValueMember="DAY" YValueMembers="COUNT(COURSE_TEACHER_CLASS.DAY)" YValuesPerPoint="4" ChartType="Doughnut" Font="Microsoft Sans Serif, 15pt, style=Bold" IsValueShownAsLabel="True">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Interval="1"></AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1" Font="Microsoft Sans Serif, 10pt, style=Bold" IsTextAutoFit="False">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 11pt, style=Bold, Underline" Name="Title1" Text="Number of classes  in a day">
            </asp:Title>
        </Titles>
        <BorderSkin BorderColor="Maroon" PageColor="PowderBlue" />
    </asp:Chart>
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT Course_Teacher_Class.Day, COUNT(Course_Teacher_Class.Day) FROM
Course_Teacher_Class
GROUP BY Course_Teacher_Class.Day,Course_Teacher_Class.Day"></asp:SqlDataSource>



    <br />



    <br />
    <br />
    <br />


    
    <asp:Chart ID="Chart3" runat="server" CssClass="alignChart" DataSourceID="SqlDataSource9" Width="1000px" BackHatchStyle="DottedGrid" BackImageTransparentColor="White" BackSecondaryColor="AliceBlue" BorderlineColor="Black" BorderlineDashStyle="Solid" Height="469px" BorderlineWidth="3">
        <Series>
            <asp:Series Name="Number of teachers" XValueMember="COURSE_NAME" YValueMembers="COUNT(DISTINCT(COURSE_TEACHER_CLASS.TEACHER_ID))" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Interval="1"></AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 11pt, style=Bold, Underline" Name="Title1" Text="Number of teachers teaching each course">
            </asp:Title>
        </Titles>
        <BorderSkin BorderColor="Maroon" PageColor="PowderBlue" />
    </asp:Chart>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT Course.Course_Name, COUNT(DISTINCT(Course_Teacher_Class.Teacher_ID)) FROM
Course JOIN Course_Teacher_Class 
ON Course.Course_Code = Course_Teacher_Class.Course_Code
GROUP BY Course_Teacher_Class.Course_Code,Course.Course_Name"></asp:SqlDataSource>

    <br />
    <br />
    <br />
    
    <asp:Chart ID="Chart4" runat="server" CssClass="alignChart" DataSourceID="SqlDataSource10" Width="985px" BackHatchStyle="DottedGrid" BackImageTransparentColor="White" BackSecondaryColor="AliceBlue" BorderlineColor="Black" BorderlineDashStyle="Solid" Height="469px" BorderlineWidth="3">
        <Series>
            <asp:Series Name="Number of students" XValueMember="Teacher Name" YValueMembers="COUNT(DISTINCT(TEACHER_STUDENT.STUDENT_ID))" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX Interval="1"></AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 11pt, style=Bold, Underline" Name="Title1" Text="Number of students taught by each teacher">
            </asp:Title>
        </Titles>
        <BorderSkin BorderColor="Maroon" PageColor="PowderBlue" />
    </asp:Chart>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT Staff.First_Name||' '||Staff.Last_Name AS &quot;Teacher Name&quot;, COUNT(DISTINCT(Teacher_Student.Student_ID)) FROM
Staff JOIN Teacher_Student 
ON Staff.Staff_Id= Teacher_Student.Teacher_ID
GROUP BY Teacher_Student.Teacher_ID,Staff.First_Name||' '||Staff.Last_Name"></asp:SqlDataSource>

    <br />

    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:CourseworkConnectionString %>" ProviderName="<%$ ConnectionStrings:CourseworkConnectionString.ProviderName %>" SelectCommand="SELECT  (
        SELECT COUNT(*)
        FROM   Module_Leader
        ) AS &quot;Module Leader&quot;,
        (
        SELECT COUNT(*)
        FROM   Tutor
        ) AS &quot;Tutor&quot;,
        (
        SELECT COUNT(*)
        FROM   Lecturer
        ) AS &quot;Lecturer&quot;
FROM    dual"></asp:SqlDataSource>

    <br />
    <br />
    <br />
    

</asp:Content>
