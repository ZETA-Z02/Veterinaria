<?php
class DashboardModel extends Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function get()
    {
        $sql = "SELECT CONCAT(c.nombre, ' ', c.apellido) AS nombres,
                    m.nombre AS nombre,
                    m.especie,
                    m.raza,
                    ci.hora,
                    ci.fecha
                FROM citas ci
                JOIN cliente c ON c.idcliente = ci.idcliente
                LEFT JOIN (
                    SELECT idcliente, nombre, especie, raza, MAX(idmascota) AS idmascota
                    FROM mascota
                    GROUP BY idcliente
                ) m ON m.idcliente = c.idcliente
                WHERE ci.fecha = CURDATE() 
                AND ci.estado = 0;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
    public function Chart()
    {
        $sql = "SELECT MONTHNAME(fecha) AS mes,COUNT(*) AS total_citas FROM citas WHERE YEAR(fecha) = YEAR(CURDATE()) GROUP BY MONTH(fecha) ORDER BY mes DESC;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
    public function GetAnimales()
    {
        $sql = "SELECT COUNT(*) AS total FROM mascota;";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
    public function GetCitas()
    {
        $sql = "SELECT COUNT(*) AS total FROM citas;";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
    public function GetClientes()
    {
        $sql = "SELECT COUNT(*) AS total FROM cliente;";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
}
