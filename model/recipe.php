<?php

class Recipe {
    public $id, $category;
    private $name, $description, $prep_time, $cook_time, $total_time;

    public function __construct($id, $name, $description)
    {
        $this->id = $id;
        $this->category = $category;
        $this->name = $name;
        $this->description = $description;
        $this->prep_time = $prep_time;
        $this->cook_time = $cook_time;
        $this->total_time = $total_time;

    }
    public function getID() {
        return $this->id;
    }

    public function getCategory() {
        return $this->category;
    }

    public static function get_all_recipes() {
        $db = Database::getDB();
        $query = 'SELECT * FROM `recipe`';
        $statement = $db->prepare($query);
        $statement->execute();
        $recipes = $statement->fetchAll();
        $statement->closeCursor();
        return $recipes;
}

    public static function get_recipe($id) {
        $db = Database::getDB();
        $query = 'SELECT recipe_name, description FROM `recipe` WHERE recipe_id = :id'; 
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->execute();
        $recipes = $statement->fetch();
        $statement->closeCursor();
        return $recipes;
    }

    public static function get_ingredients($id) {
        $db = Database::getDB();
        $query = 'SELECT Q.measurement_qty, M.measurement, I.ingredient_name FROM recipe_ingredients X
        LEFT JOIN measurement_qty Q on X.measurement_qty_id = Q.measurement_qty_id
        LEFT JOIN measurement M on X.measurement_id = M.measurement_id
        LEFT JOIN ingredients I on X.ingredient_id = I.ingredient_id WHERE X.recipe_id = :id';
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->execute();
        $ingredients = $statement->fetchAll();
        $statement->closeCursor();
        return $ingredients;
    }

    public static function get_image($id) {
        $db = Database::getDB();
        $query = 'SELECT recipe_image FROM recipe_images WHERE recipe_id = :id';
        $statement = $db->prepare($query);
        $statement->bindValue(':id', $id);
        $statement->execute();
        $image = $statement->fetch();
        $statement->closeCursor();
        return $image;
    }
}