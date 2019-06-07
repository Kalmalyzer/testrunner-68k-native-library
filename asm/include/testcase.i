
;----------------------------------------------------------------------------
; Test case done
;
; Call this to end the current test case
;
; in:
;	d0.l	status, 0 = failed; non-0 = passed

TESTCASE_DONE	MACRO	\1
	jsr	$f0fff0
	ENDM

;----------------------------------------------------------------------------
; Test case passed
;
; Call this to end the current test case with status PASSED

TESTCASE_PASSED	MACRO	\1
	moveq	#1,d0
	jsr	$f0fff0
	ENDM

;----------------------------------------------------------------------------
; Test case failed
;
; Call this to end the current test case with status FAILED

TESTCASE_FAILED	MACRO	\1
	moveq	#0,d0
	jsr	$f0fff0
	ENDM
