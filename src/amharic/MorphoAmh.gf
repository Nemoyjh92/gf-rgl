resource MorphoAmh = open Prelude,Predef in {

flags optimize = all ;--noexpand;  
	coding=utf8 ;
oper 
-------------------------------------------------------------- Helps to regulate the use of endings for both nouns and adjectives: changes---------------------------------------------------------------
                                              {--("ል"|"ሕ"|"ም"|"ሥ"|"ር"|"ስ"|"ሽ"|"ቅ"|"ብ"|"ቭ"|"ት"|"ች"|"ን"|"ኝ"|"እ"|"ክ"|"ው"|"ዝ"|"ዥ"|"ይ"|"ድ"|"ጅ"|"ግ"|"ጥ"|"ጭ"|"ጵ"|"ጽ"|"ፍ"|"ፕ") --}
-- Number
		replaceLastLet6_7 :  Str -> Str = \c -> 
		let y = last (c) in
	 		case c of {     "ህ" =>  "ሆች"  ;  
                                                  "ል" =>  "ሎች"  ;     
					"ሕ" =>  "ሖች"  ;     
					"ም" =>  "ሞች" ;  
					"ሥ" =>  "ሦች"  ;
					"ር" =>  "ሮች"  ; 
					"ስ" =>  "ሶች"  ;
					"ሽ" => "ሾች"  ; 
					"ቅ" =>  "ቆች"  ;  
					"ብ" =>  "ቦች"  ; 
					"ቭ" =>  "ቮች"  ;  
					"ት" =>  "ቶች"  ;  
					"ች" =>  "ቾች"  ;  
					"ን" =>  "ኖች"  ;  
					"ኝ" =>  "ኞች"  ;
					"እ" =>  "ኦች"  ;   
					"ክ" =>  "ኮች"  ; 
					"ው" =>  "ዎች"  ; 
					"ዝ" =>  "ዞች"  ; 
					"ዥ" =>  "ዦች"  ;  
					"ይ" =>  "ዮች"  ;   
					"ድ" =>  "ዶች"  ;  
					"ጅ" =>  "ጆች"  ;   
					"ግ" =>  "ጎች"  ; 
					"ጥ" =>  "ጦች"  ;    
					"ጭ" =>  "ጮች"  ;  
					"ጵ" =>  "ጶች"  ;    
					"ጽ" =>  "ጾች"  ; 
					"ፍ" =>  "ፎች"  ;
					"ፕ" =>  "ፖች"  ;
					_ => y+"ዎች"
					} ;


-- Species / Masculine

		replaceLastLet6_2_M :  Str -> Str = \c -> 
		let y = last (c) in
					 case y of {   "ህ" =>  "ሁ"  ;       "ል" =>  "ሉ"  ;      "ሕ" =>  "ሁ"  ;      "ም" =>  "ሙ" ;      "ሥ" =>  "ሱ"  ;      "ር" =>  "ሩ"  ;      "ስ" =>  			"ሱ"  ;      "ሽ" =>  "ሹ"  ;
      		"ቅ" =>  "ቁ"  ;      "ብ" =>  "ቡ"  ;      "ቭ" =>  "ቩ"  ;      "ት" =>  "ቱ"  ;      "ች" =>  "ቹ"  ;      "ን" =>  "ኑ"  ;      "ኝ" =>  "ኙ"  ;      "እ" =>  "ኡ"  ;      "ክ" =>  "ኩ"  ;
      		"ው" =>  "ዉ"  ;      "ዝ" =>  "ዙ"  ;      "ዥ" =>  "ዡ"  ;      "ይ" =>  "ዩ"  ;      "ድ" =>  "ዱ"  ;      "ጅ" =>  "ጁ"  ;      "ግ" =>  "ጉ"  ;      "ጥ" =>  "ጡ"  ;      "ጭ" =>  "ጩ"  ;
      		"ጵ" =>  "ጱ"  ;      "ጽ" =>  "ጹ"  ;      "ፍ" =>  "ፉ"  ;      "ፕ" =>  "ፑ"  ; _ => y+"ዉ"} ;

-- Species / Feminine

		replaceLastLet6_2_F:  Str -> Str = \c -> 
		let y = last (c) in
	 	case c of {   "ህ" =>  "ኋ"  ;       "ል" =>  "ሏ"  ;      "ሕ" =>  "ኋ"  ;      "ም" =>  "ሟ" ;      "ሥ" =>  "ሷ"  ;      "ር" =>  "ሯ"  ;      "ስ" =>  "ሷ"  ;      "ሽ" =>  "ሿ"  ;
      		"ቅ" =>  "ቋ"  ;      "ብ" =>  "ቧ"  ;      "ቭ" =>  "ቯ"  ;      "ት" =>  "ቷ"  ;      "ች" =>  "ቿ"  ;      "ን" =>  "ኗ"  ;      "ኝ" =>  "ኟ"   ;      "ክ" =>  "ኳ"  ;
 		"ዝ" =>  "ዟ"  ;      "ዥ" =>  "ዧ"  ;      "ድ" =>  "ዷ"  ;      "ጅ" =>  "ጇ"  ;      "ግ" =>  "ጓ"  ;      "ጥ" =>  "ጧ"  ;      "ጭ" =>  "ጩ"  ;
      		"ጵ" =>  "ጷ"  ;      "ጽ" =>  "ጿ"  ;      "ፍ" =>  "ፏ"  ;      "ፕ" =>  "ፗ"  ; _ => y+"ዋ" 
			
			} ;

             -- pallatalization 

                pallatalize :  Str -> Str = \c-> 
         		case c of { 
			"d" => "j";
			"t" => "c";
			"T" => "C";
			"n" => "N";
			"l" => "y";
			"s" => "x";
			"z" => "Z";
			"S" => "C";
			 _  => c  
			  } ;

 		 
}
