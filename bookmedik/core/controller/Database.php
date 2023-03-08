<?php
class Database {
    public static $db;
    public static $con;
    function Database(){
            $this->user=getenv('BOOKMEDIK_DB_USER');$this->pass=getenv('BOOKMEDIK_DB_PASSWORD');$this->host=getenv('BOOKMEDIK_DB_HOST');$this->ddbb=getenv('BOOKMEDIK_DB_NAME');
    }

    function connect(){
            $con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
            $con->query("set sql_mode=''");
            return $con;
    }

    public static function getCon(){
            if(self::$con==null && self::$db==null){
                        self::$db = new Database();
                        self::$con = self::$db->connect();
            }
            return self::$con;
    }

}
?>
