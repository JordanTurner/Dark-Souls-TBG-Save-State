<?php



function adjacentElementsProduct($inputArray) {

   $count = count($inputArray);
   $maxs = [];
    
    for ($i = 0; $i < $count; $i++){

    if ($i == 0 ){
     $prev = '';
     $next = $inputArray[$i +1];
    } 
    else {
    	    if ($i == end($inputArray)){
             	$next = '';
     			$prev = $inputArray[$i  - 1];
		    } else {

		    	$next = $inputArray[$i + 1];
		    	$prev = $inputArray[$i  - 1];
		    }
		
		    	
	 }

    $current = $inputArray[$i]; 

        $results = [];

        if ($next  != ''){
        	$result1 = $current * $next; 
       		$results[] = $result1;

       		$result3 = $current + $next; 
        	$results[] = $result1;

        	$result5 = $current / $next;
        	$results[] = $result1;

        	$result7 = $current - $next; 
        	$results[] = $result1;


        }

        
        if ($prev != ''){

        	 $result2 = $current * $prev;
       		 $results[] = $result1;

       		 $result4 = $current + $prev;
        	 $results[] = $result1;

        	 $result6 = $current / $prev;
        	 $results[] = $result1;	

        	 $result8 = $current - $prev;
       		 $results[] = $result1;	

        }        


   		$max[$i] = max($results);

   		$maxs[] = $max[$i];
   		 
}
		
        return max($maxs);

}


$data = [1, 0, 1, 0, 1000];
 echo 'Result is: ' . adjacentElementsProduct($data);

?>