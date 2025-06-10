INSERT INTO tipo_id (nom_id) VALUES 
('C�dula de ciudadan�a'),
('Pasaporte'),
('Licencia de conducci�n'),
('Documento nacional de identidad'),
('Tarjeta de identidad');

INSERT INTO pais (nom_pais) VALUES 
('Colombia'),
('M�xico'),
('Espa�a'),
('Argentina'),
('Canad�');


INSERT INTO ciudad (nom_ciudad) VALUES 
('Bogot�'),
('Ciudad de M�xico'),
('Madrid'),
('Buenos Aires'),
('Toronto');
INSERT INTO idioma (nom_idioma) VALUES 
('Espa�ol'),
('Ingl�s'),
('Franc�s'),
('Portugu�s'),
('Alem�n');
INSERT INTO espacio (tipo_esp, disponibilidad, valor) VALUES 
('Oficina', 'Disponible', 450.00),
('Sala Reuni�n', 'No disponible', 300.00),
('Puesto Fijo', 'Disponible', 200.00),
('Puesto Flexible', 'Disponible', 150.00),
('Cabina privada', 'No disponible', 350.00);

INSERT INTO info_coworking (nombre, direccion, correo, telefono, id_espacio) VALUES 
('Cowork Bogot�', 'Cra 10 #20-30', 'info@coworkbog.com', '3101234567', 1),
('Espacio CDMX', 'Av Reforma 123', 'contacto@espaciocdmx.mx', '5512345678', 2),
('WorkSpace Madrid', 'Calle Mayor 45', 'hola@madridws.es', '912345678', 3),
('RedCo Argentina', 'Av Corrientes 789', 'info@redco.com.ar', '1156782345', 4),
('Toronto Hub', '123 King St W', 'contact@torhub.ca', '6471239876', 5);

INSERT INTO usuario (nombre, apellido, edad, correo, telefono, cod_idioma, cod_pais, cod_ciudad, tipo_id) VALUES 
('Laura', 'G�mez', 28, 'laura.gomez@example.com', '3004567890', 1, 1, 1, 1),
('Carlos', 'M�ndez', 35, 'carlos.mendez@example.mx', '5511223344', 1, 2, 2, 2),
('Luc�a', 'S�nchez', 30, 'lucia.sanchez@correo.es', '699112233', 1, 3, 3, 3),
('Mateo', 'Fern�ndez', 40, 'mateo.fernandez@ar.com', '1133445566', 1, 4, 4, 4),
('Emily', 'Johnson', 27, 'emily.johnson@ca.com', '6473344556', 2, 5, 5, 5);

INSERT INTO reserva (fecha_in, fecha_can, id_espacio, id_coworking, tiempo, id_usuario) VALUES 
('2025-06-01', '2025-06-02', 1, 1, '1 d�a', 1),
('2025-06-05', '2025-06-07', 2, 2, '2 d�as', 2),
('2025-06-10', '2025-06-11', 3, 3, '1 d�a', 3),
('2025-06-15', '2025-06-18', 4, 4, '3 d�as', 4),
('2025-06-20', '2025-06-22', 5, 5, '2 d�as', 5);

