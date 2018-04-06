<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/5/2018
 * Time: 6:22 PM
 */

class Database {
    /*
     * Defines a simple API to interact with a database from PHP
     */
    protected static $connection;

    public function connect() {
        /*
         * Return a new database connection. If this has been
         * called before, return the existing connection instead.
         */
        if(!isset(self::$connection)) {
            try {
                self::$connection = new mysqli("localhost", "root", "", "westside_auto", 8080);
            } catch(Exception $e) {
                echo "Database Connection Error: ".$e->getMessage();
            }
        }

        return self::$connection;
    }

    public function query($query) {
        /*
         * Make an sql query to $connection and return the result
         */
        $db = $this->connect();
        $query_result = $db->query($query);

        return $query_result;
    }

    public function select_query($query) {
        /*
         * Make a SELECT query to data base and format the results into a assoc. array
         */
        $rows = array();
        $results = $this->query($query);

        if($results === false) {
            return false;
        }

        while($row = $results->fetch_assoc()) {
            $rows[] = $row;
        }

        return $rows;
    }

    public function return_last_error() {
        /*
         * Return the last error seen by the database
         */
        $connection = $this->connect();
        $error = $connection->error;

        return $error;
    }

    public function quote_string($value) {
        /*
         * Quote and escape a string
         */
        $connection = $this->connect();
        $new_string = "'" . $connection->real_escape_string($value) . "'";

        return $new_string;
    }
}

?>
}