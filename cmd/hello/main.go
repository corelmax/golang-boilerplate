package main

import (
	"fmt"

	hello "golang-boilerplate" // this must be absolute path. depends on your project's path and GOPATH

	"github.com/Sirupsen/logrus"
)

func main() {
	instance := hello.NewHello("world")
	greetings, err := instance.Hey()
	if err != nil {
		logrus.Fatalf("Failed to get greetings: %v", err)
	}
	fmt.Println(greetings)
}
