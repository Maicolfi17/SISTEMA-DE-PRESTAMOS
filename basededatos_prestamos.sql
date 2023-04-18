use  basededatos_prestamos;
CREATE table usuarios (
  id INT NOT NULL AUTO_INCREMENT,
  nombre_usuario VARCHAR(50) NOT NULL,
  contrasena VARCHAR(255) NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);



#la tabla de 'usuarios'almacena informacion de los usuarios del sistema , esto incluye sus nombres , contraseñesa y correo electronido


 
-- Tabla de clientes
CREATE TABLE clientes (
  id INT NOT NULL AUTO_INCREMENT,
  nombre_cliente VARCHAR(100) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  direccion VARCHAR(255),
  PRIMARY KEY (id)
);

#la tabla 'clientes' guardara los datos de los clientes que soliciten prestamos , contendra , nombre , telefono , correo electronico y direccion

-- Tabla de préstamos
CREATE TABLE prestamos (
  id INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  fecha_prestamo DATE NOT NULL,
  monto DECIMAL(9,2) NOT NULL,
  tasa_interes DECIMAL(15,2) NOT NULL,
  plazo_meses INT NOT NULL,
  fecha_vencimiento DATE NOT NULL,
  saldo_pendiente DECIMAL(9,2) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

#la tabla 'prestamos' contiene informacion de los prestamos ya entregados , como el monto , tasa de interes , el plazo de meses y el saldo por pagar


-- Tabla de pagos
CREATE TABLE pagos (
  id INT NOT NULL AUTO_INCREMENT,
  id_prestamo INT NOT NULL,
  fecha_pago DATE NOT NULL,
  monto DECIMAL(9,2) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_prestamo) REFERENCES prestamos(id)
);
#la tabla 'pagos' registra los pagos realizados por los clientes , incluye el monto ya realizado y la fecha del pago 

