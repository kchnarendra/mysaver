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
  <h1>Register new product</h1>
  <i class="fa fa-cloud" style="font-size:60px;color:lightblue;text-shadow:2px 2px 4px #000000;"></i>
  <p>Used Technologies are springMVC, myBatis with XML Configuration and JSP with JavaScript validation!</p> 
</div>


<form name="myForm" action="/mysaver/savefinal" onsubmit="return validateForm()" method="post">
  
  Product Category:
   <select name="p_category">
   	<option value="">Select</option>
    <option value="product1">product1</option>
    <option value="product2">product2</option>
    <option value="product3">product3</option>
    <option value="product4">product4</option>
  </select><br><br>
  Product Name: <input type="text" name="p_name"><br><br>
 
  Product Code: <input type="text" name="p_code" maxlength=8><br><br>
  
  Product Price: <input type="text" name="p_price"><br><br>
    
  <input type="submit" value="Submit">
  
</form>
<br>
<form name="myForm" action="/mysaver/allprod"  method="get">
 
    
  <input type="submit" value="Get All Products">
  
</form>
</body>
</html>