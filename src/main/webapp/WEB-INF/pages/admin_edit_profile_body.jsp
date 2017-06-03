
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.DbUtil"%><!-- Developed by Kuldeep Singh
email: mca.kuldeep.sekhon@gmail.com
contact 919803242155
India
 -->
<%
ResultSet rs=(ResultSet)request.getAttribute("rs");
 
while(rs.next()){
%>

  <div class="container">
   <div class="breadcrumb1">
     <ul>
        
      
        <li class="current-page">Complete /Edit your Profile</li>
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
  <form method="post" action='dashboard?action=edit&id=<%=rs.getInt("id") %>'>	
  <h2>Basics And Lifestyle</h2>
  <div class="clearfix"> </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">User Id </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" readonly="readonly" name="id" value='<%=rs.getInt("id") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">First name </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="firstname" value='<%=rs.getString("first_name") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		    <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Middel name</label>
		     <div class="col-sm-7 form_radios">
		        <div class="select-block1">
		     
		      <input type="text" id="edit-name" name="middlename" value='<%=rs.getString("middle_name") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		    <div class="form_but1" >
		      <label for="edit-name" class="col-sm-5 control-lable1">Last name </label>
		      <div class="col-sm-7 form_radios">
		       <div class="select-block1">
		      <input type="text" id="edit-name" name="lastname" value='<%=rs.getString("last_name") %>' size="60" maxlength="60" class="form-control has-dark-background">
		    </div>
		    </div>
		    <div class="clearfix"> </div>
		    </div>
		       <div class="form_but1">
		      <label for="email" class="col-sm-5 control-lable1">Email </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="email" id="email" name="email" value='<%=rs.getString("email") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		       <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Password </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="password" id="password" name="password" value='<%=rs.getString("password") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
			<div class="form_but1">
		      <label for="mobile" class="col-sm-5 control-lable1">Mobile </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="password" name="mobile" value='<%=rs.getString("mobile_no") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
			<div class="form_but1">
		      <label for="mobile" class="col-sm-5 control-lable1">Father Name </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="password" name="fathername" value='<%=rs.getString("father_name") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
			<div class="form_but1">
		      <label for="mobile" class="col-sm-5 control-lable1">Address </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="address" name="address" value='<%=rs.getString("address") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Gender : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" name="gender" value="male" class="radio_1" /> Male &nbsp;&nbsp;
		<input type="radio" name="gender" value="female" class="radio_1"  /> Female
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Marital Status : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" name="maritalstatus" class="radio_1" checked="checked" value=single /> Single &nbsp;&nbsp;
		<input type="radio" value="Divorced"name="maritalstatus" class="radio_1" /> Divorced &nbsp;&nbsp;
		<input type="radio" value="widowed" name="maritalstatus"  checked=checked class="radio_1" value="widowed" /> Widowed &nbsp;&nbsp;
		
	</div>
	<div class="clearfix"> </div>
  </div>
    <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Profile Created By : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1"name="createdby"  value="Self" checked="checked" /> Self&nbsp;&nbsp;
		<input type="radio" class="radio_1" name="createdby"  value="Parents"  /> Parents
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
     <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">About Me </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <textarea  name="aboutme" rows="3"size="60" maxlength="60" class="form-control has-dark-background"><%=rs.getString("aboutme") %></textarea>
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Country : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="country">
		<option value="<%=rs.getString("country") %>"><%=rs.getString("country") %></option>
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
        <option value="<%=rs.getString("city") %>"><%=rs.getString("city") %></option>
            
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
        <option value="<%=rs.getString("stat") %>"><%=rs.getString("stat") %></option>
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
    <label class="col-sm-5 control-lable1" for="sex">Mother Tongue : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="mothertongue">
        <option value="<%=rs.getString("mother_tongue") %>"><%=rs.getString("mother_tongue") %></option>
            <option value="">English</option>
            <option value="">French</option>
            <option value="">Telugu</option>
            <option value="">Bengali</option>
            <option value="">Bihari</option>
            <option value="">Hindi</option> 
            <option value="">Koshali</option> 
            <option value="">Khasi</option> 
            <option value="">Tamil</option> 
            <option value="">Urdu</option> 
            <option value="">Manipuri</option> 
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
    <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Height : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="height">
        <option value="<%=rs.getString("height") %>"><%=rs.getString("height") %></option>
		<option value="<?php echo $row['height'];?>"><?php echo $row['height'];?></option>
            <option value="100">100</option>
            <option value="110">110</option>
            <option value="120">120</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
    <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Weight : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="weight">
        <option value="<%=rs.getString("weight") %>"><%=rs.getString("weight") %></option>
            <option value="40">40</option>
            <option value="41">41</option>
            <option value="42">42</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Body Type : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1" name="bodytype" value="Slim"  checked="checked" /> Slim &nbsp;&nbsp;
		<input type="radio" class="radio_1" name="bodytype" value="Fat"  /> Fat
		<input type="radio" class="radio_1"  name="bodytype" value="Average"  /> Average
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Complextion : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio"  name="complextion" value="wheatish"  checked="checked" class="radio_1" /> wheatish &nbsp;&nbsp;
		<input type="radio" name="complextion" value="fair" class="radio_1"  /> Fair
		<input type="radio" name="complextion" value="black"  class="radio_1"  /> Black
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Diet : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" name="diet" class="radio_1" value="Vegetarian" checked="checked" /> Vegetarian &nbsp;&nbsp;
		<input type="radio" name="diet" class="radio_1" value="Non-Vegetarian"  /> Non-Vegetarian
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Drinking : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" name="drinking"  value="yes" class="radio_1" checked="checked" /> Yes &nbsp;&nbsp;
		<input type="radio" name="drinking"  value="no"  class="radio_1"  /> No
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Smoking : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1"name="smoking"  value="yes" checked="checked" /> Yes&nbsp;&nbsp;
		<input type="radio" class="radio_1" name="smoking"  value="no"  /> No
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  
   <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Physical Status : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1" name="physicalstatus"  value="Fit" checked="checked"/>Fit&nbsp;&nbsp;
		<input type="radio" class="radio_1" name="physicalstatus"  value="Handicap" /> Handicap
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Blood Group </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="bloodgroup" value='<%=rs.getString("blood_group") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		    <h2>Family Details</h2>
		     <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Father Occupation </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="fatheroccupation" value='<%=rs.getString("father_occupation") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		     <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Mother Occupation </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="motheroccupation" value='<%=rs.getString("mother_occupation") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		    <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Brothers : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="brothers">
        <option value='<%=rs.getString("brothers") %>'><%=rs.getString("brothers") %></option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
    <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Sisters : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="sisters">
        <option value='<%=rs.getString("sisters") %>'><%=rs.getString("sisters") %></option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
 <h2> Religious / Social & Astro Background</h2>
 <div class="clearfix"> </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Religion : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="religion">
		<option value='<%=rs.getString("religion") %>'><%=rs.getString("religion") %></option>
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
    <label class="col-sm-5 control-lable1" for="sex">Cast : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="cast">
		<option value='<%=rs.getString("caste") %>'><%=rs.getString("caste") %></option>
            <option value="Ramgariah">Ramgariah</option>
            <option value="Dhiman">Dhiman</option>
            <option value="Sharma">Sharma</option>
            <option value="Shatria">Shatria</option>
            
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Sub Cast : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="subcast">
			<option value='<%=rs.getString("sub_cast") %>'><%=rs.getString("sub_cast") %></option>
            <option value="sekhon">sekhon</option>
            <option value="nanrah">nanrah</option>
            <option value="Sandhu">Sandhu</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
   <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Rassi : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="birthsign">
		<option value='<%=rs.getString("birth_sign") %>'><%=rs.getString("birth_sign") %></option>
            <option value="Virgo">Virgo</option>
            <option value="Pices">Pices</option>
            <option value="torus">torus</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Date Of Birth </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="date" id="edit-name" name="dob" value='<%=rs.getDate("dob") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Birth Place </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="birthplace" value='<%=rs.getString("birth_place") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		       <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Birth Time </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="birthtime" value='<%=rs.getString("birth_time") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
   <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Gann </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="password" name="gann" value='<%=rs.getString("gann") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
  <div class="form_but1">
	<label class="col-sm-5 control-lable1" for="sex">Manglik : </label>
	<div class="col-sm-7 form_radios">
		<input type="radio" class="radio_1" name="manglik"  value="Yes" checked="checked"/> Yes&nbsp;&nbsp;
		<input type="radio" class="radio_1" name="manglik"  value="No" /> No
		
		<!--<hr />
		<p id="sel"></p><br />
		<input id="btnRadio" type="button" value="Get Selected Value" />-->
	</div>
	<div class="clearfix"> </div>
  </div>
  <h2>Education & Career</h2>
	<div class="clearfix"> </div>
	<div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Education : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="qualification">
		<option value='<%=rs.getString("qualification") %>'><%=rs.getString("qualification") %></option>
            <option value="B.A">B.A</option>
            <option value="M.A">M.A</option>
            <option value="P.hd">P.hd</option>
            <option value="B.sc">B.sc</option>
            <option value="M.sc">M.sc</option>
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Occupation : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="occupation">
		<option value='<%=rs.getString("occupation") %>'><%=rs.getString("occupation") %></option>
            <option value="Software Developer">Software Developer</option>
            <option value="Engineer">Engineer</option>
            <option value="Doctor">Doctor</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
    <label class="col-sm-5 control-lable1" for="sex">Annual Income : </label>
    <div class="col-sm-7 form_radios">
      <div class="select-block1">
        <select name="income">
		<option value='<%=rs.getString("income") %>'><%=rs.getString("income") %></option>
            <option value="1">1 Lac</option>
            <option value="5">5 Lac</option>
            <option value="10">10 Lacr</option>
           
        </select>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">Education Detail  </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="text" id="edit-name" name="educationdetail" value='<%=rs.getString("education_detail") %>' size="60" maxlength="60" class="form-control has-dark-background">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>
		 <div class="form_but1">
		      <label for="edit-name" class="col-sm-5 control-lable1">  </label>
		      <div class="col-sm-7 form_radios">
		         <div class="select-block1">
		      
		      <input type="submit"  value="Update Profile"  class="btn_1 ">
		   </div>
		   </div>
		   <div class="clearfix"> </div>
		    </div>    
		    
 </form>

</div>

  </div>
  <%} %>
