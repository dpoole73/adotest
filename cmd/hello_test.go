package main

import (
	"testing"
)

func TestMain(m *testing.M) {
	got := Hello()
	want := "Hello, world"
    if got != want {
		m.Errorf("got %q want %q", got, want)
	}
}
