<?php

class PDO_Connect
{
    public static function connect(): PDO
    {
        return new PDO("mysql:host=localhost;dbname=notes","root","");
    }
}