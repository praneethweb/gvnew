<%@ Page Title="" MetaDescription="Grameena vidya is a non profit organization in India provides quality digital education and assessments to the rural and urban government schools, helping students to achieve their  goals. Adopt a school to convert rural and urban government schools into model schools." Language="C#" MasterPageFile="~/Master/OutSideMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register src="Controls/Banner.ascx" tagname="Banner" tagprefix="uc1" %>
<%@ Register src="~/Controls/Campaign.ascx" tagname="Campaign" tagprefix="uc2" %>
<%@ Register src="~/Controls/SocialMedia.ascx" tagname="SocialMedia" tagprefix="uc3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {

        //alert("hai..");
        // $("#OutSideMenu1_lbHome").addClass("active");
        $("#lbHome").addClass("activelink");


    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   




    
<!-- header section end --> 

<!-- banner start -->
<div class="banner">
    
    
    
 
    
    
 <uc1:Banner ID="Banner2" runat="server" />
 <uc3:SocialMedia ID="SocialMedia1" runat="server" />
</div>

<!-- banner close --> 


<!-- Service start -->
<div class="service">
  <div class="container">


     <div class="row">
      <div class="col-md-12">
        <h1>Welcome to Grameena Vidya</h1>
        <p class="lead-font">Grameena Vidya’s (Rural school Education) Adopt-a-School and Adopt-a-Village programs provide 21st century technology enabled digital smart classrooms and learning solution for rural India. Students and teachers can access learning and teaching resources anytime and anywhere. It provides curriculum specific quality multimedia learning objects, content presented in multiple formats, vocational and learning skills, variety of assessments, software applications, that can complement and supplement school education and career skills of rural and inner-city children.

Grameena Vidya is an initiative of “<a href="AboutUS/about-ctrd.aspx" style=" text-decoration:underline;" >Center for Training, Research and Development,</a>” (CTRD) a non-profit, non-government organization (NGO).&nbsp;&nbsp;<a href="AboutUS/about-background.aspx" style="font-size:14px; color:#FF9900;" ><u>Read more</u></a></p>
      </div>
    </div>
    <div class=" service-blk">
       <h1>Programs</h1>
      <div class="row">
          <div class="col-md-6">
              <div class="programs-icon i1"></div>
                <div class="text">
                  <h3><a href="Programs/adopt-a-school.aspx">Adopt-a-School</a></h3>
                 <p >
                      “Adopt-a-School program” is a pioneering initiative of Grameena Vidya. The program
                      provides existing rural, suburban and inner city schools, .. 
                      <a href="Programs/adopt-a-school.aspx"
                          style="font-size: 14px; color: #FF9900;"><u>Read more</u></a>
                  </p>
              </div>
          </div>
        <div class="col-md-6">
           <div class="programs-icon i2"></div>
                <div class="text">
            <h3><a href="Programs/adopt-a-village.aspx">Adopt-a-Student</a></h3>
           <p >Transforming rural areas through digital learning is the focus of Adopt-a-village program. This program will provide academic and vocational ... <a href="Programs/adopt-a-village.aspx" style="font-size:14px; color:#FF9900;"><u>Read more</u></a></p></div>
        
        </div>


      </div>
     
    </div>
  </div>
</div>
<!-- Service close --> 




<div class="donate-home row">

      
    <div class="stuA">
<div class ="container" id="st-adpt">
    <h1 class="headings">Students Adopted Stats</h1>
        <div class="row">


            <div class="stat">
                <div class="first">
                    <div class="stats-icon-w3pvt">
                    <span class="fa fa-graduation-cap"></span>
                    </div>
                    <div>
                    <p class="counter font-weight-bold text-bl">14258</p>
                    </div>
                </div>
                <div class="second">
                <p class="text-colors mt-2">Students Adopted</p>
                </div>
            </div>


        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-female"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">9891</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Girl Child</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-laptop"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">8772</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Laptops</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-tablet"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">431</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Tablets</p>
        </div>
        </div>
        <div class="stat">
            <div class="first">
            <div class="stats-icon-w3pvt">
                <span class="fa fa-thumbs-o-up"></span>
            </div>
            <div>
                <p class="counter font-weight-bold text-bl">256000</p>
            </div>
        </div>
            <div class="second">
            <p class="text-colors mt-2">Multmedia content</p>
        </div>
        </div>
        </div>
    </div>
    </div>

    </div>




<div class="donate-home row">
    <div class="container text-center">
        <img src="images/slide2.png" />
    </div>
</div>



<div class="gv-gallery">
    <div class="container">
        <div class="row">
        
    <div class="col-md-6">
        <h1>Donors</h1>
        
        <div class="individual">
             <h3>Individual Donors</h3>
            <marquee direction="up">
            <span class="name">Varun Dev</span>
        <span class="details">KDPM High School, Pedawaltair, Visakhapatnam</span>
        

        <span class="name">Varun Dev</span>
        <span class="details">KDPM High School, Pedawaltair, Visakhapatnam</span>
        

        <span class="name">Varun Dev</span>
        <span class="details">KDPM High School, Pedawaltair, Visakhapatnam</span>
        

        <span class="name">Varun Dev</span>
        <span class="details">KDPM High School, Pedawaltair, Visakhapatnam</span>
                </marquee>
        <div class="more">
            <a class="btn btn-info" href="#">More</a>
        </div>

        </div>


        <div class="individual">
             <h3>Corporate Donors</h3>

             <marquee direction="up">
                <span class="name">Hindustan Unilever Ltd</span><br />
                <span class="name">Godrej Consumer Products Ltd.</span><br />
                <span class="name">Cisco Systems India Pvt. Ltd.</span><br />
                <span class="name">Indian Oil Corporation Ltd.</span><br />
                <span class="name">Tata Consultancy Services Ltd</span>
             </marquee>
        <div class="more">
            <a class="btn btn-info" href="#">More</a>
        </div>
        </div>

        
        
    </div>
   
    <div class="col-md-6 home-adopted-blocks">
        <h1>Adopted </h1>
       
        <div class="row">
            <div class="col-md-12">
            <h3>Adopted Schools</h3>
                  <marquee direction="up">
                <span class="name">Hindustan Unilever Ltd</span><br />
                <span class="name">Godrej Consumer Products Ltd.</span><br />
                <span class="name">Cisco Systems India Pvt. Ltd.</span><br />
                <span class="name">Indian Oil Corporation Ltd.</span><br />
                <span class="name">Tata Consultancy Services Ltd</span>
             </marquee>     
                </div>  
            <div class="col-md-12">
            <h3>Adopted Students</h3>
             <marquee direction="up">
                <span class="name">Hindustan Unilever Ltd</span><br />
                <span class="name">Godrej Consumer Products Ltd.</span><br />
                <span class="name">Cisco Systems India Pvt. Ltd.</span><br />
                <span class="name">Indian Oil Corporation Ltd.</span><br />
                <span class="name">Tata Consultancy Services Ltd</span>
             </marquee>   
            </div>
        </div>
       
          
    </div>
        </div>
    </div>

</div>

<!--  testimonials section -->
<div class="testimonials-gv event-strips">
  <div class="container">
    <div class="row">
      <div class="row ">
      <div class="col-md-4">
        <div class="">          
          <h2>Event/Media </h2>
          <div class="pic"><a href="Programs/media.aspx"><img src="images/media/cyinet-gv(1).jpg" class="img-responsive" alt=""></a></div>
          <p> Minister of HRD Smt.Smriti Irani and Minister of Rural Development Venkaiah Naidu...<a href="Programs/media.aspx"><Small style="color:Green;">Watch Events</Small></a></p>
         
        </div>
      </div>
      <div class="col-md-4">
        <div class=" ">
          <h2>Photo Gallery</h2>
          <div class="pic"><a href="Programs/photo-gallery.aspx"><img src="images/photo-gallery/au/3.jpg" class="img-responsive" alt=""></a></div>          
          <p>Andhra University Vice Chanceller MR GSN Raju Garu Inaugurated...<a href="Programs/photo-gallery.aspx"><Small style="color:Green;">View Gallery</Small></a> </p>
        
        </div>
      </div>
      <div class="col-md-4">
        <div class="">
          <h2>Video Testimonials </h2>
          <div class="pic"><a href="Programs/video-gallery.aspx"><img src="images/Testmonials/prasad-garu.jpg" class="img-responsive" alt=""></a></div>          
          <p>Video Testimonials Describing Grameena vidya and benifits of smart class room...<a href="Programs/video-gallery.aspx"><Small style="color:Green;">View Testmonials</Small></a></p>
         
        </div>
      </div>
      
    </div>

    </div>
  </div>
</div>
<!--  testimonials section close --> 


<!--Footer-->

<script src="js/jquery-1.9.1.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
<script src="js/script.js"></script> 
<script src="js/owl.carousel.js"></script>
<script>

    $("#bcrumbs").hide();
    //  document.getElementById("bcrumbs").style.display = "none";
</script>


<!-- Smartsupp Live Chat script -->

<script type="text/javascript">

    var _smartsupp = _smartsupp || {};

    _smartsupp.key = 'a7ed710d609fee0dc878cefd5f133ee123f7b6aa';

    window.smartsupp || (function (d) {

        var s, c, o = smartsupp = function () { o._.push(arguments) }; o._ = [];

        s = d.getElementsByTagName('script')[0]; c = d.createElement('script');

        c.type = 'text/javascript'; c.charset = 'utf-8'; c.async = true;

        c.src = 'https://www.smartsuppchat.com/loader.js?'; s.parentNode.insertBefore(c, s);

    })(document);

</script>
</asp:Content>

