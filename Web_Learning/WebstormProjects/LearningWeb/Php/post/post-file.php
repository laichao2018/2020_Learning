<?php

// // echo "Post page";
// print_r($_POST);    //// 打印文件名
// echo "<br>";
// print_r($_FILES);


//// 获取上传文件对应的字典
$fileInfo=$_FILES["upFile"];
/// 获取上传文件的名称与临时路径
$fileName=$fileInfo["name"];
$filePath=$fileInfo["tmp_name"];

echo $fileName;
echo "<br>";
echo $filePath;

move_uploaded_file($filePath,"..//source/".$fileName);
?>