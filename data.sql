INSERT INTO tipo_id (nom_id) VALUES 
('Cédula de ciudadanía'),
('Pasaporte'),
('Licencia de conducción'),
('Documento nacional de identidad'),
('Tarjeta de identidad');

INSERT INTO pais (nom_pais) VALUES 
('Colombia'),
('México'),
('España'),
('Argentina'),
('Canadá');


INSERT INTO ciudad (nom_ciudad) VALUES 
('Bogotá'),
('Ciudad de México'),
('Madrid'),
('Buenos Aires'),
('Toronto');
INSERT INTO idioma (nom_idioma) VALUES 
('Español'),
('Inglés'),
('Francés'),
('Portugués'),
('Alemán');
INSERT INTO espacio (tipo_esp, disponibilidad, valor) VALUES 
('Oficina', 'Disponible', 450.00),
('Sala Reunión', 'No disponible', 300.00),
('Puesto Fijo', 'Disponible', 200.00),
('Puesto Flexible', 'Disponible', 150.00),
('Cabina privada', 'No disponible', 350.00);

INSERT INTO info_coworking (nombre, direccion, correo, telefono, id_espacio) VALUES 
('Cowork Bogotá', 'Cra 10 #20-30', 'info@coworkbog.com', '3101234567', 1),
('Espacio CDMX', 'Av Reforma 123', 'contacto@espaciocdmx.mx', '5512345678', 2),
('WorkSpace Madrid', 'Calle Mayor 45', 'hola@madridws.es', '912345678', 3),
('RedCo Argentina', 'Av Corrientes 789', 'info@redco.com.ar', '1156782345', 4),
('Toronto Hub', '123 King St W', 'contact@torhub.ca', '6471239876', 5);

INSERT INTO usuario (nombre, apellido, edad, correo, telefono, cod_idioma, cod_pais, cod_ciudad, tipo_id) VALUES 
('Laura', 'Gómez', 28, 'laura.gomez@example.com', '3004567890', 1, 1, 1, 1),
('Carlos', 'Méndez', 35, 'carlos.mendez@example.mx', '5511223344', 1, 2, 2, 2),
('Lucía', 'Sánchez', 30, 'lucia.sanchez@correo.es', '699112233', 1, 3, 3, 3),
('Mateo', 'Fernández', 40, 'mateo.fernandez@ar.com', '1133445566', 1, 4, 4, 4),
('Emily', 'Johnson', 27, 'emily.johnson@ca.com', '6473344556', 2, 5, 5, 5);

INSERT INTO reserva (fecha_in, fecha_can, id_espacio, id_coworking, tiempo, id_usuario) VALUES 
('2025-06-01', '2025-06-02', 1, 1, '1 día', 1),
('2025-06-05', '2025-06-07', 2, 2, '2 días', 2),
('2025-06-10', '2025-06-11', 3, 3, '1 día', 3),
('2025-06-15', '2025-06-18', 4, 4, '3 días', 4),
('2025-06-20', '2025-06-22', 5, 5, '2 días', 5);

