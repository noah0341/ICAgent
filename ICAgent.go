// ICAgent project ICAgent.go
package ICAgent

import (
	"fmt"
	"log"
	"strconv"

	linuxproc "github.com/c9s/goprocinfo/linux"
)

func getStats() (idle, total uint64) {
	stat, err := linuxproc.ReadStat("/proc/stat")
	if err != nil {
		log.Fatal("stat read fail")
	}

	for _, s := range stat.CPUStats {
		// s.User
		// s.Nice
		// s.System
		// s.Idle
		// s.IOWait
		val := strconv.FormatUint(s.System, 10)
		//		if err != nil {
		//			fmt.Println("Error: ", err)
		//		}
		fmt.Printf(val)
	}
	return
}
