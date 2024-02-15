package main

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestMain(t *testing.T) {
	got := Hello()
	want := "Hello, world"
	require.Equal(t, got, want)
}
