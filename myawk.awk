BEGIN {
	print "=========== working on /etc/passwd file ============= "
} /root/ {
	print $0
} 
END {
	print "================= Completed work on /etc/passwd ========="
}
