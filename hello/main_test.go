package main

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestHandler(t *testing.T) {
	someString := "this is a string"

	assert.Equal(t, someString, getTheString(someString))
}

func getTheString(someString string) string {
	return someString
}
