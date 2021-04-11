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
    $query = 'SELECT * FROM `recipe` WHERE recipe_id = :id'; 
    $statement = $db->prepare($query);
    $statement->bindValue(':id', $id);
    $statement->execute();
    $recipes = $statement->fetchAll();
    $statement->closeCursor();
    return $recipes;
}

