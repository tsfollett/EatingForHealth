<?php
    require('model/database.php');

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
    
