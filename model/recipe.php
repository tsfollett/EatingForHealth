<?php

function get_recipes() {
    global $db;
    $query = 'SELECT * FROM `recipe`';
    $statement = $db->prepare($query);
    $statement->execute();
    $recipes = $statement->fetchAll();
    $statement->closeCursor();
    return $recipes;
}

function get_recipe($id) {
    global $db;
    $query = 'SELECT recipe_name, description FROM `recipe` WHERE recipe_id = :id'; 
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $recipes = $statement->fetch();
    $statement->closeCursor();
    return $recipes;
}

function get_ingredients($id) {
    global $db;
    $query = 'SELECT Q.measurement_qty, M.measurement, I.ingredient_name FROM recipe_ingredients X
    LEFT JOIN meaurement_qty Q on X.measurement_qty_id = Q.measurement_qty_id
    LEFT JOIN measurement M on X.measurement_id = M.measurement_id
    LEFT JOIN ingredients I on X.ingredient_id = I.ingredient_id WHERE X.recipe_id = :id';
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $ingredients = $statement->fetchAll();
    $statement->closeCursor();
    return $ingredients;
}

