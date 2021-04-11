<?php
    require('model/database.php');

    $avoid = filter_input(INPUT_POST, 'avoid', FILTER_SANITIZE_SPECIAL_CHARS, FILTER_REQUIRE_ARRAY);
    $meal = filter_input(INPUT_POST, 'mealid', FILTER_VALIDATE_INT);

    $action = filter_input(INPUT_POST, 'action', FILTER_SANITIZE_STRING);
    if (!$action) {
        $action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);
        if (!$action) {
            $action = 'welcome';
        }
    }

    switch($action) {
        case "welcome":
            include('view/welcome.php');
            break;
        default:
            $recipe = get_recipes();
    }
    
