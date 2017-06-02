<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Regular Search</li>
     </ul>
   </div>
   <!--<script type="text/javascript">
    $(function () {
     $('#btnRadio').click(function () {
          var checkedradio = $('[name="gr"]:radio:checked').val();
          $("#sel").html("Selected Value: " + checkedradio);
      });
    });
   </script>-->
<div class="col-md-9 search_left">
  <form method="post" action="search">	
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Gender : </label>
	<div class="col-sm-7 form_radios">
		<input  name="gender" value="male" type="radio" class="radio_1" /> Male &nbsp;&nbsp;
		<input  name="gender" value="female" type="radio" class="radio_1" checked="checked" /> Female
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Marital Status : </label>
	<div class="col-sm-7 form_radios">
		<input name="maritalstatus" value="Single" type="radio" class="radio_1" checked="checked" /> Single &nbsp;&nbsp;
		<input name="maritalstatus" value="Divorced" type="radio" class="radio_1"  /> Divorced &nbsp;&nbsp;
		<input name="maritalstatus" value="Widowed" type="radio" class="radio_1" value="Cheese" /> Widowed &nbsp;&nbsp;

	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Country : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="country">
                       <option value="">Country</option>
            <option value="Japan">Japan</option>
            <option value="Kenya">Kenya</option>
            <option value="Dubai">Dubai</option>
            <option value="Italy">Italy</option>
            <option value="Greece">Greece</option> 
            <option value="Iceland">Iceland</option> 
			<option value="India">India</option> 
            <option value="China">China</option> 
            <option value="Doha">Doha</option> 
            <option value="Irland">Irland</option> 
            <option value="Srilanka">Srilanka</option> 
            <option value="Russia">Russia</option> 
            <option value="Hong Kong">Hong Kong</option> 
            <option value="Germany">Germany</option>
            <option value="Canada">Canada</option>  
            <option value="Mexico">Mexico</option> 
            <option value="Nepal">Nepal</option>
            <option value="Norway">Norway</option> 
            <option value="">Oman</option>
            <option value="Oman">Pakistan</option>  
            <option value="Kuwait">Kuwait</option> 
            <option value="Indonesia">Indonesia</option>  
            <option value="Spain">Spain</option>
            <option value="Thailand">Thailand</option>  
            <option value="Saudi Arabia">Saudi Arabia</option> 
            <option value="Poland">Poland</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">District / City : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="city">
            <option value="">District / City</option>
 <option value="amritsar">Amritsar</option>
            <option value="jalandhar">jalandhar</option>
            <option value="batala">batala</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">State : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="state">
             <option value="">State</option>
            <option value="punjab">Punjab</option>
            <option value="himachal">Himachal</option>
            <option value="tamilnadu">tamilnadu</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Religion : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="religion">
            <option value="Hindu">Hindu</option>
            <option value="Sikh">Sikh</option>
            <option value="Jain-All">Jain-All</option>
            <option value="Jain-Digambar">Jain-Digambar</option>
            <option value="Jain-Others">Jain-Others</option>
            <option value="Muslim-All">Muslim-All</option> 
            <option value="Muslim-Shia">Muslim-Shia</option> 
            <option value="Muslim-Sunni">Muslim-Sunni</option> 
            <option value="Muslim-Others">Muslim-Others</option> 
            <option value="Christian-All">Christian-All</option> 
            <option value="Christian-Catholic">Christian-Catholic</option> 
            <option value="Jewish">Jewish</option> 
            <option value="Inter-Religion">Inter-Religion</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Mother Tongue : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="mothertongue">
           <option value="eglish">English</option>
            <option value="French">French</option>
            <option value="Telugu">Telugu</option>
            <option value="Bengali">Bengali</option>
            <option value="Bihari">Bihari</option>
            <option value="Hindi">Hindi</option> 
            <option value="Koshali">Koshali</option> 
            <option value="Khasi">Khasi</option> 
            <option value="Tamil">Tamil</option> 
            <option value="Urdu">Urdu</option> 
            <option value="Manipuri">Manipuri</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 
 
  	 <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">  </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="submit"  value="Search Match"  class="btn-lg btn-block btn_1 ">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>    
		    
  
 </form>

</div>
<div class="col-md-3 match_right">
	<div class="profile_search1">
	   <form action="view_profile">
		  <input type="text" class="m_1" name="id" size="30" required="" placeholder="Enter Profile ID :">
		  <input type="submit" value="Go">
	   </form>
   </div>
   <section class="slider">
	 <h3>Happy Marriage</h3>
	 <div class="flexslider">
		<ul class="slides">
		  <li>
			<img src="images/s2.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		  <li>
			<img src="images/s1.jpg" alt=""/>
			<h4>Lorem & Ipsum</h4>
			<p>It is a long established fact that a reader will be distracted by the readable</p>
		  </li>
		 
	    </ul>
	  </div>
   </section>

     </div>
     <div class="clearfix"> </div>
  </div>
</div>