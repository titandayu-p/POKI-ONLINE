<?php
    include 'db_connect.php';
    $query = mysqli_query($connect,"SELECT * FROM user");

    while($result=mysqli_fetch_assoc($query)){
        $result_set[]=$result;
    }
    $data=array(
        'message'=>'Get Data Success',
        'data'=>$result_set,
        'status'=>'200'
    );
    echo json_encode($data);
?>