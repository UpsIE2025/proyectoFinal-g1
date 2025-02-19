package main

import "errors"

// Errors
var (
	ErrInvalidRequest = errors.New("Solicitud inválida")
	ErrDatabase       = errors.New("Error de base de datos")
)
