// Rule that will check for malware

rule Malware_Detection
{
	meta: 
		Author = "Kimberly Dills"
		Description = "Key words from Silent Banker malware"
	
	strings: 
		$word1 = {6A 40 68 00 30 00 00 6A 14 8D 91} //Silent Banker Trojan virus
		$word2 = {8D 4D B0 2B C1 83 C0 27 99 6A 4E 59 F7 F9}
		$word3 = "UVODFRYSIHLNWPEJXQZAKCBGMT"
    
    condition:
        any of them
}
