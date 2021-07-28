CREATE TABLE IF NOT EXISTS "clientes" (
	"Cedula"	TEXT,
	"Nombre"	TEXT NOT NULL,
	"Region"	TEXT NOT NULL,
	"Edad"	 NOT NULL,
	PRIMARY KEY("Cedula")
)