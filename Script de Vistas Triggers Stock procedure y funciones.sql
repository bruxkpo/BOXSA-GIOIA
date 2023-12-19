CREATE VIEW vista_stock_articulos AS
SELECT idArticulo, detalle, stock
FROM articulos;

select * from vista_stock_articulos;

CREATE VIEW contacto_clientes AS
SELECT Nombre, telefono1, telefono2, telefono3, correo 
FROM cliente;

select * from contacto clientes;

CREATE VIEW ventas_info AS
SELECT cliente.nombre, ordventacab.fecha, ordventacab.fechaEntrega, ordventadet.idProd, ordventadet.cantidad, ordventadet.descripcion, ordventadet.importe
FROM ordventadet
INNER JOIN ordventacab on ordventadet.idordVentacab = ordventacab.idordVentacab
INNER JOIN cliente on ordventacab.idCliente = cliente.idCliente  ;

select * from ventas_info;


CREATE OR REPLACE VIEW procesos_tiempo AS
SELECT recetaprocesos.idProd, procesos.proceso, recetaprocesos.duracion 
FROM recetaprocesos
INNER JOIN procesos ON recetaprocesos.idCt = procesos.idCt
ORDER BY recetaprocesos.idProd;

select * from procesos_tiempo;

DELIMITER $$

CREATE TRIGGER before_insert_empleado
BEFORE INSERT ON empleado
FOR EACH ROW
BEGIN
    IF NEW.fecIncorporacion IS NULL THEN
        SET NEW.fecIncorporacion = CURDATE();
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_update_stock
AFTER UPDATE ON articulos
FOR EACH ROW
BEGIN
    -- Si el stock es menor que el mínimo, crear una orden de compra
    IF NEW.stock < NEW.stockmin THEN
        INSERT INTO ordcomdet (idArticulo, cantidad, descripcion, importe)
        VALUES (NEW.idArticulo, NEW.stockmin - NEW.stock, 'Reponer stock', (NEW.stockmin - NEW.stock) * valor);
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE ReducirStock(
    IN p_id_articulo INT,
    IN p_cantidad_utilizada INT
)
BEGIN
    -- Reducir la cantidad de stock del artículo
    UPDATE articulos
    SET stock = stock - p_cantidad_utilizada
    WHERE idArticulo = p_id_articulo;

    -- Puedes realizar más acciones si es necesario
    -- ...

    -- Puedes imprimir un mensaje de éxito
    SELECT 'Stock reducido correctamente' AS mensaje;
END$$

DELIMITER ;

CREATE PROCEDURE AumentarStock(
    IN p_id_articulo2 INT,
    IN p_cantidad_utilizada INT
)
BEGIN
    -- Aumentar la cantidad de stock del artículo
    UPDATE articulos
    SET stock = stock + p_cantidad_utilizada
    WHERE id_articulo = p_id_articulo;

    SELECT 'Stock aumentado correctamente' AS mensaje;
END$$

DELIMITER ;

