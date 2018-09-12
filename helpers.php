<?php

function connect_db($options = array())
{
    try
    {
        $db = new PDO($options['dsn'], $options['username'], $options['password'], array(
            PDO::ATTR_TIMEOUT => $options['timeout'],
            PDO::ATTR_PERSISTENT => $options['is_persistent'],
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::MYSQL_ATTR_USE_BUFFERED_QUERY => true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ));

        return $db;
    }
    catch (PDOException $e)
    {
        trigger_error($e->getMessage(), E_USER_ERROR);
        return false;
    }
}
