// Rule that will check for malware

rule Malware_Detection
{
	meta: 
		Author = "Kimberly Dills"
		Description = "Malware detection rule"
	
	strings: 
		$word1 = "1-1aajXj-0007Bh-GT.eml"
		$word2 = "1-1aiIGR-0002Ss-O2 (1).eml"
		$word3 = "1-1akpC7-0007pi-H2.eml"
		$word4 = "1-1anM11-0001Mv-Gv.eml"
                $word5 = "1-1apsmB-0006ME-FJ.eml"
                $word6 = "1-1apwx8-0006wW-Um.eml"
                $word7 = "1-1aiIGR-0002Ss-CW.eml"
                $word8 = "1-1aiLhN-0004xD-2G.eml"
                $word9 = "1-1akrsY-0007HW-Tz.eml"
                $word10 = "1-1anQO8-0002JK-9h.eml"
                $word11 = "1-1apsn8-0006ME-R0.eml"
                $word12 = "1-1bD40a-0002Ft-4W.eml"
    
    condition:
                any of them
}
