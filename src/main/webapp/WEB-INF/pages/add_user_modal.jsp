
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                          
                                            <div class="alert alert-info"><strong><center>Add Category </center></strong></div>
                                        </div>
                                        <div class="modal-body">
                              <form  method="post" action="user.php" enctype="multipart/form-data">
                                
                                <hr>
								
								 <div class="control-group">
                                           <label class="control-label" for="inputEmail">Name:</label>
                                           <input type="text" name="name" class = "form-control" placeholder="Name">
                                          
                                 </div>
                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Email:</label>
                                    <div class="controls">
                                        <input type="email" class = "form-control"  name="email"  placeholder="email" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password:</label>
                                    <div class="controls">
                                        <input type="password" class = "form-control"  name="password"  placeholder="password" >
                                    </div>
                                </div>
<div class="control-group">
                                    <label class="control-label" for="inputPassword">Gender:</label>
                                    <div class="controls">
                                        <input type="text" class = "form-control"  name="gender"  placeholder="password" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="input01">Image:</label>
                                    <div class="controls">
                                        <input type="file" name="image"> 	
                                    </div>
                                </div>

								<div class = "modal-footer">
											 <button name = "go" class="btn btn-primary">Save</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                           

								</div>
							
									   </div>
                                     
                                          
                                      
                                    </div>
									
									  </form>  
									  
									   <?php 
                            if (isset($_POST['go'])) {

                                $name = $_POST['name'];
                                $email = $_POST['email'];
								  $password = $_POST['password'];
                                
                                
                                //image
                                $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);
//
                                move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $_FILES["image"]["name"]);
                                $location = "upload/" . $_FILES["image"]["name"];


                                mysqli_query($conn,"insert into members(first_name,email,password)
                            	values ('$name','$email','$password')
                                ") or die(mysql_error());

                                header('location:user.php');
                            }
                            ?>
									  
									  
									  
									  
                                </div>
                            </div>