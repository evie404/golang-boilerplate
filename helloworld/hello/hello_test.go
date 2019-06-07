package hello

import (
	"testing"
)

func TestHello(t *testing.T) {
	tests := []struct {
		name string
		want string
	}{
		{
			"returns hello",
			"hello",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Hello(); got != tt.want {
				t.Errorf("Hello() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestHelloWorld(t *testing.T) {
	tests := []struct {
		name string
		want string
	}{
		{
			"returns hello world",
			"hello world",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := HelloWorld(); got != tt.want {
				t.Errorf("HelloWorld() = %v, want %v", got, tt.want)
			}
		})
	}
}
