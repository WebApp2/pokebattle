<!doctype html>
<header>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</header>

<?php
require_once('style.php');
?>

<form class="form-horizontal" action="data_upload.php">
<fieldset>
<table>
	<tr>
		<td>
<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="graphName">Show Graph Title:</label></td><td>
  January's Data<input type='radio' value = 'jan' name='radioMonth' />
  <div class="controls">
    <input id="graphName" name="graphName" placeholder="Ex. Prof Oij's Weather Data" class="input-medium" type="text">
    </td>
  </div>
</div></tr>

<!-- Multiple Checkboxes --><tr><td>
<div class="control-group">
  <label class="control-label" for="">Select Option(s):</label></td><td>
  <div class="controls">
    <label class="checkbox" for="showWhat-0">
      <input name="showWhat" id="showWhat-0" value="Show Average?" type="checkbox">
      Show Average?
    </label>
    <label class="checkbox" for="showWhat-1">
      <input name="showWhat" id="showWhat-1" value="Show Low?" type="checkbox">
      Show Low?
    </label>
    <label class="checkbox" for="showWhat-2">
      <input name="showWhat" id="showWhat-2" value="Show High?" type="checkbox">
      Show High?
    </label>
  </div></td></td></tr>
</div>

<tr>
	<td colspan="2">
<!-- Button -->
<div class="control-group">
  <label class="control-label" for="showGraphs"></label>
  <div class="controls">
    <button id="showGraphs" name="showGraphs" class="btn btn-default">Show Graph</button>
  </div>
</div>
</td></tr>
</table>

</fieldset>
</form>
</body></html>



</body>
