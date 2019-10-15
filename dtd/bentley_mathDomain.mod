<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Math Domain                                  -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      November 2011                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//BENTLEY//ELEMENTS DITA 1.1 Math Domain//EN"
      Delivered as file "bentley_mathDomain.mod"                   -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the Math Domain                    -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             November 2011                                     -->
<!--                                                               -->
<!--             (C) Copyright Bentley Systems, Incorporated 2011. -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

                        

<!-- included MathML document type -->
<!ENTITY % MATHML.prefixed "INCLUDE">
<!ENTITY % MATHML.prefix "mml">
<!ENTITY % MathMLstrict "INCLUDE">
<!ENTITY % mathml 
PUBLIC "-//W3C//DTD MathML 2.0//EN"
      "mathml2/mathml2.dtd" >   <!-- http://www.w3.org/Math/DTD/ -->
%mathml;

 
<!ENTITY % mathph   	"mathph"                                     >
<!ENTITY % equation		"equation"                                   >
<!ENTITY % math			"math"										 >

<!ENTITY % eqsymbols	"eqsymbols"									 >
<!ENTITY % eqsymbol		"eqsymbol"									 >
<!ENTITY % symname		"symname"									 >
<!ENTITY % symdesc		"symdesc"									 >

<!-- the following two elements are taken from the DITA highlight
domain -->
<!ENTITY % sup         "sup"                                         >
<!ENTITY % sub         "sub"                                         >

<!-- ============================================================= -->
<!--                  MATH KEYWORD TYPES ELEMENT DECLARATIONS      -->
<!-- ============================================================= -->


<!--                    LONG NAME: Math Phrase			           -->
<!ELEMENT mathph    (%words.cnt; | %sup; | %sub; | %image; | %math.qname;)* 		 >
<!ATTLIST mathph    keyref 	
                        CDATA 
                                  #IMPLIED
              %univ-atts; 
              outputclass 
                        CDATA
                                  #IMPLIED						 	 
              xmlns:mml 
                        CDATA 
                                  #FIXED "http://www.w3.org/1998/Math/MathML"   >

								  
<!--                    LONG NAME: Equation 						-->                  
<!ELEMENT equation      ((%title;)?, (%desc;)?, 
                         (%math; | %eqsymbols;)* )                    >
<!ATTLIST equation    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Math			                    -->
<!ELEMENT math          (%para.cnt; | %math.qname;)*           >
<!ATTLIST math    
             %display-atts;
             spectitle  CDATA                            #IMPLIED
             %univ-atts;
             outputclass 
                        CDATA                            #IMPLIED    
             xmlns:mml 
                        CDATA
                                  #FIXED "http://www.w3.org/1998/Math/MathML"    >


<!--                    LONG NAME: Equation Symbol List            -->
<!ELEMENT eqsymbols    (%eqsymbol;)+                                 >
<!ATTLIST eqsymbols       
             compact    (yes | no |
                         -dita-use-conref-target)        #IMPLIED
             spectitle  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Equation Symbol List Entry      -->
<!ELEMENT eqsymbol      ((%symname;)+, (%symdesc;)+)                 >
<!ATTLIST eqsymbol      
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Name	                   -->
<!ELEMENT symname       (%term.cnt;)*                                > 
<!ATTLIST symname      
             keyref     CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Symbol Description              -->
<!ELEMENT symdesc       (%defn.cnt;)*                                >
<!ATTLIST symdesc        
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >						
						
		
<!--                    LONG NAME: Superscript                     -->
<!ELEMENT sup           (#PCDATA | %basic.ph; | %data.elements.incl; |
                         %foreign.unknown.incl;)*                    >
<!ATTLIST sup          
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Subscript                       -->
<!ELEMENT sub           (#PCDATA | %basic.ph; | %data.elements.incl; |
                         %foreign.unknown.incl;)*                    >
<!ATTLIST sub           
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >

 

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->
 

<!ATTLIST mathph 	%global-atts;  class CDATA "+ topic/foreign mt-d/mathph " >
<!ATTLIST equation  %global-atts;  class CDATA "+ topic/fig mt-d/equation " >
<!ATTLIST math      %global-atts;  class CDATA "+ topic/foreign mt-d/math " >
<!ATTLIST eqsymbols	%global-atts;  class CDATA "+ topic/dl mt-d/eqsymbols " >
<!ATTLIST eqsymbol  %global-atts;  class CDATA "+ topic/dlentry mt-d/eqsymbol " >
<!ATTLIST symname	%global-atts;  class CDATA "+ topic/dt mt-d/symname " >
<!ATTLIST symdesc	%global-atts;  class CDATA "+ topic/dd mt-d/symdesc " >

<!ATTLIST sub       %global-atts;  class CDATA "+ topic/ph mt-d/sub " >
<!ATTLIST sup       %global-atts;  class CDATA "+ topic/ph mt-d/sup " >
 
<!-- ================== End DITA Math Domain ===================== -->