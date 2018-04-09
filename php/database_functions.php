<?php
/*
 * This could be a class but I find that it's easier to use these
 */

function db_connect() {
    /*
     * Create new persistent database connection, or return the existing one
     */
    static $database;

    if(!isset($database)) {
        $database = new mysqli('localhost', 'root', '', 'auto_company', 3306);
    }

    if(!$database) {
        // Couldn't connect
        echo db_error();
        return false;
    }

    return $database;
}

function db_query($query) {
    /*
     * Return result of query on database
     * For better SELECT handling, use db_select()
     */
    $db = db_connect();
    $result = $db->query($query);
    
    if(!$result) {
        echo "Query Error: " . db_error();
        return false;
    }

    /* Result is true or false, does not have properties
    if($result->num_rows == 0) {
        return false;
    }*/

    return $result;
}

function db_select($query) {
    /*
     * Return results of SELECT query in associated array
     */
    $rows = array();
    $result = db_query($query);

    if(!$result) {
        return false;
    }

    // Build new array with results
    while($row = $result->fetch_assoc()) {
        $rows[] = $row;
    }
    return $rows;
}

function db_error() {
    /*
     * Return the last error generated in the database
     */
    $connection = db_connect();
    $error = $connection->error;

    return $error;
}

function db_quote($value) {
    /*
     * Escape and quote user input before doing database operations
     */
    $connection = db_connect();
    return "'" . $connection->real_escape_string($value) . "'";
}

function db_quote_many($array) {
    /*
     * Useful for quoting all form values from POST request
     */
    $to_return = array();
    foreach($array as $value) {
        $to_return[] = db_quote($value);
    }
    return $to_return;
}

function db_last_insert() {
    /*
     * Return the last autogenerated id from an insert
     */
    $connection = db_connect();
    return $connection->insert_id;
}

?>