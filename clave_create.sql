
CREATE TABLE IF NOT EXISTS "clave_dinamica" (
	"cedula_cliente"	TEXT NOT NULL,
	"correo"	TEXT NOT NULL,
	"celular"	TEXT NOT NULL,
	FOREIGN KEY("cedula_cliente") REFERENCES "cuentas"("Cedula_cliente")
);
