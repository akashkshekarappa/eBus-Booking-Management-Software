<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="wddHomePage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/stylesheet.css" rel="stylesheet" />
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#myPage">Group 2</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="design.pdf" target="_blank">Design Phase</a> </li>
                        
                        <li><a href="index.html">Demo</a></li>
                        <li><a href="project_report.pdf" target="_blank">Project Report</a></li>
                        <li><a href="#roles">Roles</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="jumbotron text-center">
            <h1>Bus Booking Management System</h1>
            <marquee> <h3>Group 2</h3></marquee>

        </div>

        <div class="container">
            <div class="row steps ">

                <div class="col-xs-2 col-xs-offset-1 text-center">
                    <img src="img/img1.png" class="img-responsive img-circle" /><a href="#akash">Akash Kurva Shekarappa</a>
                    <p>Present ID: 6</p>
                </div>
                <div class="col-xs-2 text-center">
                    <img src="img/img4.jpeg" class="img-responsive img-circle" /><a href="#reddy">Rajashekar Reddy</a>
                    <p>Present ID: 15</p>
                </div>
                <div class="col-xs-2 text-center">
                    <img src="img/img5.jpg" class="img-responsive img-circle" /><a href="#gokul">Gokul Satyaraj Mutyala</a>
                    <p>Present ID: 14</p>
                </div>
                <div class="col-xs-2 text-center">
                    <img src="img/img2.jpg" class="img-responsive img-circle" /><a href="#pruthvi">Pruthvi Pulluru</a>
                    <p>Present ID: 16</p>
                </div>
                <div class="col-xs-2 text-center">
                    <img src="img/img3.jpg" class="img-responsive img-circle" /><a href="#ganta">Naga krishna Ganta</a>
                    <p>Present ID: 10</p>
                </div>

            </div>
        </div>

        <!-- Container (About Section) -->
        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <h2>e-Bus Booking Management System:</h2>
                    <br />
                    <h4 class="text-justify">This online system is used to manage online bus reservations for passengers. The system
consists of three modules, admin, user and staff manager. When a person logs in to the
system, it will be able to identify whether he is a user or a staff manager or an administrator.
If the user logs into the system as a staff manager, he will be able to see all the bookings
made on that day, book a new ticket, request extra tickets for a particular service. If the user
logs into system as an admin, he will be able to process all the extra ticket requests made by
staff manager. The user will be traversed through-out the application from home page to
Itinerary page during the booking process.</h4>
                    <br />
                    <h2>The proposed project contains mainly three modules:</h2>
                    <h4>
                        <ul>
                            <li>Admin Module.</li>
                            <li>Staff Manager Module.</li>
                            <li>User Module.
                            </li>
                        </ul>
                    </h4>
                </div>
                <div class="col-sm-4">
                    <img class="img-responsive img-thumbnail img-rounded" src="img/bus.jpg" alt="BUS" />
                </div>


            </div>


        </div>

        <div id="roles" class="container-fluid bg-grey">
            <h2 class="text-center">Roles & Responsibilities:</h2>
            <div class="row">
                <div class="col-sm-8 text-success">
                    <p>Requirement Gathering and Analysis - Akash, Rajshekar, Gokul, Pruthvi, Naga Krishna</p>
                    <p>Documentation and GUI - Akash, Rajshekar, Gokul, Pruthvi, Naga Krishna</p>
                    <p>Development - Akash, Rajshekar, Gokul, Pruthvi, Naga Krishna</p>
                    <p>Testing - Akash, Rajshekar, Gokul, Pruthvi, Naga Krishna</p>

                </div>
                <div></div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        <div id="akash" class="container-fluid text-center bg-grey">
            <h2>Akash Kurva Shekarappa</h2>
            <p>Presentation ID: #6</p>
            <h4>What we have created</h4>
            <div class="container">

                <table class="table table-responsive table-hover text-justify">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Things Done</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Discussion on the Group home page.</td>

                        </tr>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Helped in designing the Individual Home Page</td>

                        </tr>
                        <tr>
                            <td>05 Feb 2018</td>
                            <td>Helped in designing the Group Home Page</td>

                        </tr>
                        <tr>
                            <td>07 Feb 2018</td>
                            <td>Completed the design of Home Page</td>

                        </tr>
                        <tr>
                            <td>15 Feb 2018</td>
                            <td>Completed the Define Phase of Project</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <br />

        <div id="reddy" class="container-fluid text-center bg-grey">
            <h2>Rajashekar Reddy Pandiri</h2>
            <p>Presentation ID: #15</p>
            <h4>What we have created</h4>
            <div class="container">

                <table class="table table-responsive table-hover text-justify">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Things Done</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Discussion on the Group home page.</td>

                        </tr>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Helped in designing the Individual Home Page</td>

                        </tr>
                        <tr>
                            <td>05 Feb 2018</td>
                            <td>Helped in designing the Group Home Page</td>

                        </tr>
                        <tr>
                            <td>07 Feb 2018</td>
                            <td>Completed the design of Home Page</td>

                        </tr>
                        <tr>
                            <td>15 Feb 2018</td>
                            <td>Completed the Define Phase of Project</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <br />

        <div id="gokul" class="container-fluid text-center bg-grey">
            <h2>Gokul Satyaraj Mutyala</h2>
            <p>Presentation ID: #14</p>
            <h4>What we have created</h4>
            <div class="container">

                <table class="table table-responsive table-hover text-justify">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Things Done</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Discussion on the Group home page.</td>

                        </tr>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Helped in designing the Individual Home Page</td>

                        </tr>
                        <tr>
                            <td>05 Feb 2018</td>
                            <td>Helped in designing the Group Home Page</td>

                        </tr>
                        <tr>
                            <td>07 Feb 2018</td>
                            <td>Completed the design of Home Page</td>

                        </tr>
                        <tr>
                            <td>15 Feb 2018</td>
                            <td>Completed the Define Phase of Project</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <br />

        <div id="pruthvi" class="container-fluid text-center bg-grey">
            <h2>Pruthvi Pulluru</h2>
            <p>Presentation ID: #16</p>
            <h4>What we have created</h4>
            <div class="container">

                <table class="table table-responsive table-hover text-justify">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Things Done</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Discussion on the Group home page.</td>

                        </tr>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Helped in designing the Individual Home Page</td>

                        </tr>
                        <tr>
                            <td>05 Feb 2018</td>
                            <td>Helped in designing the Group Home Page</td>

                        </tr>
                        <tr>
                            <td>07 Feb 2018</td>
                            <td>Completed the design of Home Page</td>

                        </tr>
                        <tr>
                            <td>15 Feb 2018</td>
                            <td>Completed the Define Phase of Project</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <br />

        <div id="ganta" class="container-fluid text-center bg-grey">
            <h2>Naga krishna Ganta</h2>
            <p>Presentation ID: #10</p>
            <h4>What we have created</h4>
            <div class="container">

                <table class="table table-responsive table-hover text-justify">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Things Done</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Discussion on the Group home page.</td>

                        </tr>
                        <tr>
                            <td>03 Feb 2018</td>
                            <td>Helped in designing the Individual Home Page</td>

                        </tr>
                        <tr>
                            <td>05 Feb 2018</td>
                            <td>Helped in designing the Group Home Page</td>

                        </tr>
                        <tr>
                            <td>07 Feb 2018</td>
                            <td>Completed the design of Home Page</td>

                        </tr>
                        <tr>
                            <td>15 Feb 2018</td>
                            <td>Completed the Define Phase of Project</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <br />


        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <p><a href="" title="">&copy;Group2</a></p>
        </footer>
    </form>
</body>
</html>


