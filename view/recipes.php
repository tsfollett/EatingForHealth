<?php include('header.php')?>
<?php require('../model/recipe.php') ?>
<?php require('../model/database.php') ?>

<form>
<section id="list" class="list">
    <header class="list row list header">
    <form action="." method="post" id="list" class="list_header_select">
    <input type="hidden" name="action" value="list_meal_category">
    <select name="mealid" class="form-select" aria-label="Select Meal" required>
    <option selected>View All Recipes</option>
    <option value="1">Breakfast</option>
    <option value="2">Lunch</option>
    <option value="3">Dinner</option>
    <option value="4">Snack</option>
    <option value="5">Dessert</option>
    <option value="6">Drink</option>
    </select>
    <label>Avoid</label>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">Gluten</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">Dairy</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">Sugar</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">Coconut</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">Shellfish</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">Eggs</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">Nuts</label>
</div>
<button class="add-button bold" id="user">Search</button><br>
    </form>
    </header>
    <table id="publictable">
      <tr>
        <th>Name</th>
        <th>Category</th>
      </tr>
      <?php $recipe = get_recipes(); ?>
      <?php foreach ($recipe as $r) : ?>
      <tr>
        <td><?php echo $r['recipe_name']; ?></td>
        <td><?php echo $r['category']; ?></td>
        <td><button type="button" class="btn btn-primary btn-sm" action="display_recipe">View</button></td>
      </tr>
      <?php endforeach; ?>  
    </table>


<?php include('footer.php'); ?>