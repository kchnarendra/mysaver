<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script>
function validateForm() {
  
  var pcategory = document.forms["myForm"]["p_category"].value;
  var pname = document.forms["myForm"]["p_name"].value;
  var pcode = document.forms["myForm"]["p_code"].value;
  var pprice = document.forms["myForm"]["p_price"].value;
  
  if(pcategory == ""){
    alert("Product Category is mandatory");
    return false;
  }
  
  if (pname == "") {
    alert("Product Name is mandatory");
    return false;
  }
  if(pname.trim().length != pname.length){
    alert("Spaces are not allowed at the ends of Product Name");
    return false;
  }

  if (pcode == "") {
    alert("Product Code is mandatory");
    return false;
  }
  
  if (pcode != "") {
      var TCode = pcode;
      for(var i=0; i<TCode.length; i++)
      {
        var char1 = TCode.charAt(i);
        var cc = char1.charCodeAt(0);

        if((cc>47 && cc<58) || (cc>64 && cc<91) || (cc>96 && cc<123))
        {

        }
        else {
         alert('Input is not alphanumeric');
         return false;
        }
      }
      //return true;
  }
  
  if (pprice == "") {
    alert("Product Price is mandatory");
    return false;
  } 
  
 	if (pprice != "") {
      var TCode = pprice;
      for(var i=0; i<TCode.length; i++)
      {
        var char1 = TCode.charAt(i);
        var cc = char1.charCodeAt(0);

        if((cc>47 && cc<58))
        {
        }
        else {
         alert('Input is not numeric');
         return false;
        }
      }
    // return true;
  }
  
    if (pprice > 100000) {
    alert("Product Price should be less than 100000");
    return false;
  }

}
</script>
</head>


<body>

	<div class="jumbotron text-center">
		<i class="fas fa-cog fa-spin"></i>
		<h1>Register new product</h1>
		<p>Used Technologies are springMVC, myBatis with XML Configuration
			and JSP with JavaScript validation!</p>
	</div>

	<div class="container" align="center">
		<form name="myForm" action="/mysaver/savefinal"
			onsubmit="return validateForm()" method="post">
			<div class="form-group">

				<div class="form-group  col-lg-6">
					<label class="col-lg-4">Product Category:</label>
					<div class="col-lg-7   ">
						<select class="form-control" name="p_category">
							<option value="">Select</option>
							<option value="product1">product1</option>
							<option value="product2">product2</option>
							<option value="product3">product3</option>
							<option value="product4">product4</option>
						</select>
					</div>
				</div>

				<div class="form-group  col-lg-6">
					<label class="col-lg-4">Product Name:</label>
					<div class="col-lg-7">
						<input class="form-control" type="text" name="p_name">
					</div>
				</div>

				<div class="form-group  col-lg-6">
					<label class="col-lg-4">Product Code:</label>
					<div class="col-lg-7">
						<input class="form-control" type="text" name="p_code" maxlength=8>
					</div>
				</div>

				<div class="form-group  col-lg-6">
					<label class="col-lg-4">Product Price:</label>
					<div class="col-lg-7">
						<input class="form-control" type="text" name="p_price"><br>
						<br>
					</div>
				</div>
				
				<div class="form-group  col-lg-6">
					<button type="submit" class="btn btn-primary" >Submit</button>
					<a href="/mysaver/allprod">
						<button type="button" class="btn btn-primary" >Get All Products</button>
					</a>
				</div>
				
			</div>
		</form>
	
	</div>
</body>
</html>