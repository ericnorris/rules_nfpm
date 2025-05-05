package main

import (
	"log"

	"github.com/ericnorris/rules_nfpm/go/v2/internal/cmd/nfpmwrapper"

	"github.com/alecthomas/kong"
)

func main() {
	cmd := nfpmwrapper.Cmd{}

	kong.Parse(&cmd, kong.UsageOnError())

	if err := cmd.Run(); err != nil {
		log.Fatalf("[FATAL] %s", err)
	}
}
