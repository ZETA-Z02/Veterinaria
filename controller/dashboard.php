<?php
require_once('./vendor/autoload.php');
class Dashboard extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function render()
    {
        $animales = $this->model->GetAnimales();
        $citas = $this->model->GetCitas();
        $clientes = $this->model->GetClientes();
        $this->view->data = array(
            "animales"=>$animales['total'],
            "citas"=>$citas['total'],
            "clientes"=>$clientes['total'],
        );
        $this->view->Render('dashboard/index');
    }

    public function get()
    {
        $data = $this->model->Get();
        while ($row = mysqli_fetch_assoc($data)) {
            $json[] = array(
                "nombres" => $row['nombres'],
                "mascota" => $row['nombre'],
                "especie" => $row['especie'],
                "raza" => $row['raza'],
                "hora" => $row['hora'],
            );
        }
        echo json_encode($json);
    }
    public function chart(){
        $data = $this->model->Chart();
        $labels = [];
        $dataset = [];
        while($row = mysqli_fetch_assoc($data)){
            $labels[] = $row['mes'];
            $dataset[] = $row['total_citas'];
        }
        $json = [
            'labels' => $labels,
            'dataset' => [
                [
                    'label' => 'Citas por mes',
                    'data' => $dataset,
                    'backgroundColor' => 'rgba(255, 99, 132, 0.2)',
                    'borderColor' => 'rgba(255, 99, 132, 1)',
                    'borderWidth' => 1
                ]
            ]
        ];
        echo json_encode($json);
    }
    public function imprimir()
    {
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        // Configuración del PDF
        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('Tu Nombre');
        $pdf->SetTitle('Citas de Veterinaria');
        $pdf->SetHeaderData('', 0, 'Reporte de Citas', '');
        $pdf->setHeaderFont(array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
        $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
        $pdf->SetFont('dejavusans', '', 10);
        $pdf->AddPage();
        // Consulta y obtención de los datos
        $data = $this->model->Get();
        $json = [];
        while ($row = mysqli_fetch_assoc($data)) {
            $json[] = array(
                "nombres" => $row['nombres'], 
                "mascota" => $row['nombre'], 
                "especie" => $row['especie'], 
                "raza" => $row['raza'], 
                "hora" => $row['hora'], );
        }
        // Construcción de la tabla HTML
        $html = '<h3>Listado de Citas</h3>';
        $html .= '<table border="1" cellpadding="4" cellspacing="0" class="table-style">';
        $html .= '<thead>
                <tr>
                    <th>Cliente</th>
                    <th>Mascota</th>
                    <th>Especie</th>
                    <th>Raza</th>
                    <th>Hora</th>
                </tr>
            </thead>';
        $html .= '<tbody>';
        // Agregar filas de datos al HTML
        foreach ($json as $item) {
            $html .= '<tr>
                <td>' . $item['nombres'] . '</td>
                <td>' . $item['mascota'] . '</td>
                <td>' . $item['especie'] . '</td>
                <td>' . $item['raza'] . '</td>
                <td>' . $item['hora'] . '</td>
                </tr>';
        }
        $html .= '</tbody></table>';
        // Imprimir HTML en el PDF
        $pdf->writeHTML($html, true, false, true, false, '');
        // Cerrar y mostrar el PDF
        $pdf->Output('citas_veterinaria.pdf', 'I');
    }
}
