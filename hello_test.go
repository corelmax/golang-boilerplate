package hello

import (
	"testing"

	. "github.com/smartystreets/goconvey/convey"
)

func TestNewHello(t *testing.T) {
	Convey("Testing NewHello()", t, func() {
		instance := NewHello("world")
		So(instance.Message, ShouldEqual, "world")
		greetings, err := instance.Hey()
		So(err, ShouldBeNil)
		So(greetings, ShouldEqual, "Hello world !")
	})
}
