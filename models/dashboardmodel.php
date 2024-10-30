<?php 
class DashboardModel extends Model{
    function __construct(){
        parent::__construct();
    }
    public function get(){
        $sql = "SELECT CONCAT(c.nombre,' ',c.apellido) as nombres, m.nombre, m.especie, m.raza, ci.hora FROM citas ci JOIN cliente c on c.idcliente = c.idcliente join mascota m on m.idcliente = c.idcliente WHERE ci.fecha = CURDATE() GROUP BY ci.idcita;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
    public function Chart(){
        $sql = "SELECT MONTHNAME(fecha) AS mes,COUNT(*) AS total_citas FROM citas WHERE YEAR(fecha) = YEAR(CURDATE()) GROUP BY MONTH(fecha) ORDER BY mes DESC;";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
}
