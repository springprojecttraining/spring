<html>
<head>
        <meta charset="utf-8">
        <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />" rel="stylesheet">
         <link href="<c:url value="/resources/css/POP0001.css" />" rel="stylesheet">
</head>

<body>
    
<div class="container d-flex justify-content-center">
  <form>
    <div class="form-row">
      <div class="inoutwidth " >
        <label for="In">In</label>
        <input class="form-control form-control-sm" type="text" placeholder="11:00">
      </div>
      <div class="col-xs-6 w-3 p-3">
       
      </div>
      <div class="inoutwidth">
        <label for="Out">Out</label>
        <input class="form-control form-control-sm" type="text" placeholder="19:00">
      </div> 
    </div>
    
    <div class="form-group col-xs-6" style="padding-right: 0;"></div>
    
    <div class="form-row">
      <div class="col-xs-3">
        <label for="In Reason">In Reason(<span class="star">*</span>)</label>
        <textarea class="form-control" id="textarea" rows="3" cols="14" ></textarea>
      </div>
      <div class="col-xs-6 w-5 p-2"> 
       
      </div>
      <div class="col-xs-3">
        <label for="Out Reason">Out Reason(<span class="star">*</span>)</label>
        <textarea class="form-control" id="textarea" rows="3" cols="14"></textarea>
      </div>
    </div>

    <div class="form-group col-xs-7" style="padding-right: 0;"></div>
    <div class="form-row">
      <div class="OKwidth">
        <button type="button" class="btn btn-secondary " id="button">  OK  </button>
      </div>
      <div class="col-xs-6 w-5 p-3"> 
      </div>
      <div class="cancelwidth">
        <button type="button" class="btn btn-secondary">Cancel</button>
      </div> 
    </div>
  </form>
</div>


</body>
</html>