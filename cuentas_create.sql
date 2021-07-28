
CREATE TABLE IF NOT EXISTS "cuentas" (
	"Num_cuenta"	TEXT,
	"Cedula_cliente"	TEXT NOT NULL,
	"Estado"	INTEGER NOT NULL,
	"Saldo"	INTEGER NOT NULL,
	"Fecha_apertura"	INTEGER NOT NULL,
	PRIMARY KEY("Num_cuenta"),
	FOREIGN KEY("Cedula_cliente") REFERENCES "clientes"("Cedula")
)
