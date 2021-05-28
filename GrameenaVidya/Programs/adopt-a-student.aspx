﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/OutSideMaster.master" CodeBehind="adopt-a-student.aspx.cs" Inherits="GrameenaVidya.Programs.adopt_a_student" %>

<%@ Register src="../Controls/AsideStu_right.ascx" tagname="AsideStu_right" tagprefix="uc1" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //$("#HeaderInside1_aForums").addClass("active");
          $("#lbPrograms").addClass("activelink");
          $("#divAbout").hide();

      });
    </script>
<%--
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<link rel="stylesheet" type="text/css" href="../css/component.css" />--%>
<script src="../js/modernizr.custom.js"></script>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>


  <div class="">
        <!--  Main-container section -->
        <div class="causes">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 adopt-left-block">
                        <!-- progaram detail start -->
                        <h1 class="page-heading">
                            Adopt-a-Student</h1>
                        <div class="pic">
                               <img src="../images/adopt-a-student.jpeg" alt="Alternate Text" class="img-responsive" />
                        </div>
                           <p>
                      ADOPT-A-STUDENT initiative provides Internet-connected Computing Device for each student who are on the wrong side of the digital divide -- disadvantaged due to -- income, education, race, gender, geographic location (urban-rural), age, skills, awareness, political, cultural and psychological attitudes gaps. Our focus is to adopt students at the bottom of the pyramid; especially those identified through government issued socio-economic certification. 
                        </p>
                        <p>
                            This 1:1 student to broadband enabled device program will support: 
                               <ul style="padding-left:50px">
                <li style="list-style:inherit">	Online learning </li>
<li style="list-style:inherit">Differentiated instruction</li>
<li style="list-style:inherit">Project-based learning</li>
<li style="list-style:inherit">	Flipped classrooms</li>
<li style="list-style:inherit"> Enhances collaboration</li>
<li style="list-style:inherit">Practice communication in multiple formats</li>
<li style="list-style:inherit"> Acquire life skills </li>
                                   <li style="list-style:inherit"> A host of other instructional strategies.</li>

            </ul>
                        </p>
                        <p>
                            Unless students take devices home, there is little demonstrable impact on learning, since learning mostly continues outside schools. Your sponsorship will reduce the gaps in literacy, academic achievement, civic opportunity, economic, social and physical disability, especially among those students at the bottom of the pyramid – <b>Your sponsorship alone will help the student more than anything else. This is the greatest form of Vidya Dhaan. </b>
                        </p>
                        <p>
                           <b> Any Individual or Corporate can Adopt-a-Student(s) by sponsoring 1 or multiple students.</b> Every adopted student will be provided a broadband enabled Laptop or Tablet, or similar portable device. Usually Tablets will be given to students below 4th grade and Laptops for students above 4th grade
                        </p>
                        <p>
                            <b>
                                Adopt-a-student costs Rs 35000/- (Thirty five thousand rupees) or USD 500/- (Five hundred US dollars based on current exchange rates). This sponsorship (donation) can be paid is full or 4 monthly installments . <a href="../Donate/Donate.aspx" class="btn btn-primary">Donate Now</a> 
                            </b>
                        </p>
                            <p>
                          For additional information about donation please contact us – info@grameenavidya.org or +91 7702444575
                      </p>
                       <%-- <p>
                            Therefore, the first step in transforming villages across India is by imparting
                            quality education thru smart classroom and smart schools to the masses in a cost
                            effective way. Digital education will transform villages into model villages that
                            can learn to easily adopt and adapt digital infrastructure, health care, cleanliness,
                            social justice, women empowerment, community services, etc. in the process make
                            their villages into Smart Villages.
                        </p>--%>
                        <div class="clearfix">
                        </div>
                        <div class="col-md-12" style="margin:5%"> </div>
                       <%-- <div class="col-md-12 ch-tab">
                            <!-- Nav tabs Start -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#adopvillage1" data-toggle="tab" style="font-size: 16px;">
                                    Why Adopt-a-Student?</a></li>
                                <li><a href="#adopvillage2" data-toggle="tab" style="font-size: 16px;">What does Adopt-a-School
                                     entail?</a></li>
                                <li><a href="#adopvillage3" data-toggle="tab" style="font-size: 16px;">How does Adopt-a-Student
                                     work?</a></li>
                            </ul>
                            <!-- Nav tabs Close -->
                            <!-- Tab Start -->
                            <div class="tab-content product-tab">
                                <div class="tab-pane active fade in" id="adopvillage1">
                                    <p>
                                        This program has proven to have a tremendous impact:</p>
                                    <ul class="adopt-list">
                                        <li>Every school in the village will become smart classrooms with digital learning content
                                            and digital libraries </li>
                                        <li>All the schools in the village can become community centers during after school
                                            hours </li>
                                        <li>These community centers in villages will allow young children to hone their IT skills
                                            and learn vocational software that can will equip them with employable skills.
                                        </li>
                                        <li>Digital education gives the greatest social ROI than any other Government or private
                                            sector project</li>
                                        <li>These community centers will become the training grounds for all villagers to pick-up
                                            IT skills and in the process reduce digital divide and inequalities. </li>
                                    </ul>
                                </div>
                                <div class="tab-pane fade" id="adopvillage2">
                                    <table class="adopt-hardware-table">
                                        <thead>
                                            <tr>
                                                <td>
                                                    Hardware
                                                </td>
                                                <td>
                                                    Software
                                                </td>
                                                <td>
                                                    Content
                                                </td>
                                                <td>
                                                    Support
                                                </td>
                                                <td>
                                                    Vocational Software1
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    Interactive Digital Board
                                                </td>
                                                <td>
                                                    Curriculum Mapping Engine
                                                </td>
                                                <td>
                                                    Classes 1 – 10 (State, CBSE, ICSE curriculum)
                                                </td>
                                                <td>
                                                    Teacher Training
                                                </td>
                                                <td>
                                                    Adobe Photoshop
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Projector
                                                </td>
                                                <td>
                                                    Learning Management Systems
                                                </td>
                                                <td>
                                                    Mathematics, English, Science &amp; Social
                                                </td>
                                                <td>
                                                    Hardware Usage Training &amp; Support
                                                </td>
                                                <td>
                                                    Tally Accounting Software
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    CPU / Digi box
                                                </td>
                                                <td>
                                                    Android Software
                                                </td>
                                                <td>
                                                    Audio-visual Multi-media content
                                                </td>
                                                <td>
                                                    Software Usage Training &amp; Support
                                                </td>
                                                <td>
                                                    MS - Office
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Supplemental Power Back-up
                                                </td>
                                                <td>
                                                    Usage and Achievement App
                                                </td>
                                                <td>
                                                    PowerPoint Presentation
                                                </td>
                                                <td>
                                                    Content Updates Installation
                                                </td>
                                                <td>
                                                    HTML - 5
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Key Board and Mouse
                                                </td>
                                                <td>
                                                    PL Multi Model
                                                </td>
                                                <td>
                                                    Class Notes / Points-to-Remember
                                                </td>
                                                <td>
                                                    Printed Collaterals &amp; Reading Material Provision
                                                </td>
                                                <td>
                                                    Andriod Software
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Cabling, Casing, Wall mount kit and Wiring
                                                </td>
                                                <td>
                                                    Online Accounts for Contents Access
                                                </td>
                                                <td>
                                                    Worksheets / Skills Proficiency Tests
                                                </td>
                                                <td>
                                                    Customer Support – Academic
                                                </td>
                                                <td>
                                                    DTP
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Multimedia Speakers
                                                </td>
                                                <td>
                                                    Cloud based Data Center
                                                </td>
                                                <td>
                                                    Virtual Labs
                                                </td>
                                                <td>
                                                    Intelligent Reports
                                                </td>
                                                <td>
                                                    Vocational Software1
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    External Storage Device
                                                </td>
                                                <td>
                                                    Third Party – Skills Assessment Software
                                                </td>
                                                <td>
                                                    Formative and Summative Assessments
                                                </td>
                                                <td>
                                                    Call Center – online and mobile support
                                                </td>
                                                <td>
                                                    Vocational Software2
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="adopvillage3">
                                    <p>
                                        <b>Step 1:</b><br />
                                        Suggest a village you want to donate. Provide details of all the school(s) in the
                                        village .</p>
                                    <p>
                                        <b>Step 2:</b><br />
                                        Sponsor in full or start a campaign by covering part of the hardware cost for all
                                        the schools in the village.</p>
                                    <p>
                                        <b>Step 3:</b><br />
                                        Donors can (1) Donate in full by Adopting all Schools in the village, (2) Start
                                        a campaign and donate the minimum amount that covers the hardware expense for the
                                        schools they adopted, other donors can join the campaign and contribute the remaining
                                        balance and (3) Donate any amount to Grameena Vidya pool, which will be spent on
                                        existing list of beneficiary schools that have no donors as yet.
                                    </p>
                                    <p>
                                        <b>Step 4:</b><br />
                                        Donors receive regular reports of their adopted village and school(s) from Grameena
                                        Vidya and directly from the beneficiary school administration as well. You can take
                                        a tour or interact remotely with the school principal, teachers and students.</p>
                                    <br />
                                    <h3>
                                        Review the Economics of Adopt-a-School Program - Smart Classroom implementation
                                    </h3>
                                    <table class="adopt-hardware-table adopt-hardware-table2">
                                        <thead>
                                            <tr>
                                                <td width="15%">
                                                    S. No.
                                                </td>
                                                <td width="60%">
                                                    Smart Classroom Items
                                                </td>
                                                <td width="25%">
                                                    Amount /Per Unit(Rs)
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    1
                                                </td>
                                                <td>
                                                    Curriculum Aligned Content
                                                </td>
                                                <td>
                                                    FREE
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    2
                                                </td>
                                                <td>
                                                    Smart Classroom Hardware
                                                </td>
                                                <td>
                                                    60000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    3
                                                </td>
                                                <td>
                                                    Teacher Training
                                                </td>
                                                <td>
                                                    5000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    4
                                                </td>
                                                <td>
                                                    Formative Proficiency Test for Learning Skills
                                                </td>
                                                <td>
                                                    20000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    5
                                                </td>
                                                <td>
                                                    Online Learning Companion
                                                </td>
                                                <td>
                                                    FREE
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    6
                                                </td>
                                                <td>
                                                    Software
                                                </td>
                                                <td>
                                                    FREE
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    7
                                                </td>
                                                <td>
                                                    Support
                                                </td>
                                                <td>
                                                    15000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    8
                                                </td>
                                                <td>
                                                    Vocational Software
                                                </td>
                                                <td>
                                                    10000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <strong>110000 (ONE LAKH RUPEES)</strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>--%>
                        <%--	    <h2>Why Adopt-a-Village?</h2>
           
            <br />
            <h2>What does Adopt-a-School Program entail?</h2>

              <table class="adopt-hardware-table">
                                            <thead>
                                                <tr>
                                                    <td>Hardware</td>
                                                    <td>Software</td>
                                                    <td>Content</td>
                                                    <td>Support</td>
                                                    <td>Vocational
                                                       Software</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                  
  
    <tr>
    <td>Interactive Digital Board</td>
    <td>Curriculum Mapping Engine</td>
    <td>Classes 1 – 10 (State, CBSE, ICSE curriculum)</td>
    <td>Teacher Training</td>
    <td>Abode Photoshop</td>
  </tr>
  <tr>
    <td>Projector</td>
    <td>Learning Management Systems</td>
    <td>Mathematics, English, Science &amp; Social</td>
    <td>Hardware Usage Training &amp; Support</td>
    <td>Tally Accounting Software</td>
  </tr>
  <tr>
    <td>CPU / Digi box</td>
    <td>Android Software</td>
    <td>Audio-visual Multi-media content </td>
    <td>Software Usage Training &amp; Support</td>
    <td>MS-Office</td>
  </tr>
  <tr>
    <td>CPU / Digi box Supplemental Power Back-up</td>
    <td>PL Multi Model</td>
    <td>PowerPoint Presentation </td>
    <td>Content Updates Installation</td>
    <td>HTML</td>
  </tr>
  <tr>
    <td>Key Board and Mouse</td>
    <td>PL Multi Model</td>
    <td>Class Notes - Points-to-Remember</td>
    <td>Printed Collaterals &amp; Reading Material Provision</td>
    <td>DTP</td>
  </tr>
  <tr>
    <td>Cabling, Casing, Wall mount kit and Wiring</td>
    <td>Online Accounts for Contents Access</td>
    <td>Worksheets - Skills Diagnostic </td>
    <td>Customer Support – Academic</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Speakers</td>
    <td>Cloud based Data Center</td>
    <td>Virtual Labs</td>
    <td>Intelligent Reports</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>External Storage Device</td>
    <td>Third Party -Skills Software</td>
    <td>Assessments</td>
    <td>Call Center – online and mobile support</td>
    <td>&nbsp;</td>
    </tr>
                                            </tbody>
                                        </table>
                                        <br />


    
		 
        <h2>How does Adopt-a-Village Program work?</h2>

<br />--%>

       
<!-- Testimonial slides -->                        
<div class="container pr-testimonials">
	<div class="row">
		<div class="col-sm-12">
        <h3><strong>Testimonial</strong></h3>
        <div class="seprator"></div>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <div class="row" style="padding: 20px">
                    <button style="border: none;"><i class="fa fa-quote-left testimonial_fa" aria-hidden="true"></i></button>
                    <p class="testimonial_para">Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo en.</p><br>
                    <div class="row">
                    <div class="col-sm-2">
                        <img src="http://demos1.showcasedemos.in/jntuicem2017/html/v1/assets/images/jack.jpg" class="img-responsive" style="width: 80px">
                        </div>
                        <div class="col-sm-10">
                        <h4><strong>Jack Andreson</strong></h4>
                        <p class="testimonial_subtitle"><span>Chlinical Chemistry Technologist</span><br>
                        <span>Officeal All Star Cafe</span>
                        </p>
                    </div>
                    </div>
                  </div>
                </div>
               <div class="item">
                   <div class="row" style="padding: 20px">
                    <button style="border: none;"><i class="fa fa-quote-left testimonial_fa" aria-hidden="true"></i></button>
                    <p class="testimonial_para">Lorem Ipsum ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo en.</p><br>
                    <div class="row">
                    <div class="col-sm-2">
                        <img src="http://demos1.showcasedemos.in/jntuicem2017/html/v1/assets/images/kiara.jpg" class="img-responsive" style="width: 80px">
                        </div>
                        <div class="col-sm-10">
                        <h4><strong>Kiara Andreson</strong></h4>
                        <p class="testimonial_subtitle"><span>Chlinical Chemistry Technologist</span><br>
                        <span>Officeal All Star Cafe</span>
                        </p>
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="controls testimonial_control pull-right">
                <a class="left fa fa-chevron-left btn btn-default testimonial_btn" href="#carousel-example-generic"
                  data-slide="prev"></a>

                <a class="right fa fa-chevron-right btn btn-default testimonial_btn" href="#carousel-example-generic"
                  data-slide="next"></a>
              </div>
        </div>
	</div>
</div>



<!-- Adopt A School Form -->      
<div class="container sub-form" style="display:none">
    <div class="row">
        <h1>Adopt a Student Form</h1>
        <div class="col-md-12">

            
        <form>

            <div class="form-group row">
            <label for="text1" class="col-md-4 col-form-label">Name of the Student</label> 
            <div class="col-md-8">
            <input id="text1" name="text1" type="text" class="form-control">
            </div>
            </div>

            <div class="form-group row">
            <label for="textarea" class="col-md-4 col-form-label">Address & Contact Info</label> 
            <div class="col-md-8">
            <textarea id="textarea" name="textarea" cols="40" rows="5" class="form-control"></textarea>
            </div>
            </div>

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">Name of the Decision Maker</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <h2>School Details:</h2>
            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">Curriculum</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">Student Strength</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">No.of Girl Students</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">No. Of Teachers</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">          
                <div class="col-md-6">
                <label for="text" class="col-form-label">Private / Government School</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>            
                <div class="col-md-6">
                <label for="text" class="col-form-label">Average School Fee</label> 
                <input id="text" name="text" type="text" class="form-control">
                </div>
            </div> 

            <div class="form-group row">
            <label for="textarea" class="col-md-4 col-form-label">Socia Economic Background of Students</label> 
            <div class="col-md-8">
            <textarea id="textarea" name="textarea" cols="40" rows="5" class="form-control"></textarea>
            </div>
            </div>


            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">How many Smart / Digital Classrooms?</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">How many existing computers / Tabs for Students use?</label> 
            <div class="col-md-8">
            <input id="text" name="text" type="text" class="form-control">
            </div>
            </div> 

            <div class="form-group row">
            <label for="text" class="col-md-4 col-form-label">Do you have any On-line Classes?</label> 
            <div class="col-md-8">

          <div class="custom-control custom-checkbox custom-control-inline">
            <input name="checkbox" id="checkbox_0" type="checkbox" class="custom-control-input" value="yes"> 
            <label for="checkbox_0" class="custom-control-label">Yes</label>
          </div>


         <div class="custom-control custom-checkbox custom-control-inline">
            <input name="checkbox" id="checkbox_0" type="checkbox" class="custom-control-input" value="no"> 
            <label for="checkbox_0" class="custom-control-label">No</label>
          </div>



            </div>
            </div> 

            
            <div class="form-group row">
            <div class="offset-4 col-md-8">
            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
            </div>


        </form>
            </div>
    </div>
</div>


<!-- School Data -->  
                       
<table class="table table-striped table-bordered" style="display:none">>
 <thead> <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr></thead>
    <tbody>
    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

    <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

        <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>

        <tr>
      <td>S.No.</td>
      <td>Student Name</td>
      <td>Address</td>
      <td>Status</td>
  </tr>
 </tbody>
</table>


                        
                        
              
                    </div>
                        <!-- progaram detail close -->
                  <uc1:AsideStu_right ID="AsideStu_right1" runat="server" />
                    <!-- sidebar section dending -->
                </div>
            </div>
        </div>
    </div>
 
        
    <script>
        var hash = window.location.hash,
				current = 0,
				demos = Array.prototype.slice.call(document.querySelectorAll('#codrops-demos > a'));

        if (hash === '') hash = '#set-1';
        setDemo(demos[parseInt(hash.match(/#set-(\d+)/)[1]) - 1]);

        demos.forEach(function (el, i) {
            el.addEventListener('click', function () { setDemo(this); });
        });

        function setDemo(el) {
            var idx = demos.indexOf(el);
            if (current !== idx) {
                var currentDemo = demos[current];
                currentDemo.className = currentDemo.className.replace(new RegExp("(^|\\s+)" + 'current-demo' + "(\\s+|$)"), ' ');
            }
            current = idx;
            el.className = 'current-demo';
        }
    </script>
    <script src="../js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
<script src="../js/script.js"></script> 
<script src="../js/owl.carousel.js"></script>
</asp:Content>

