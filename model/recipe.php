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

