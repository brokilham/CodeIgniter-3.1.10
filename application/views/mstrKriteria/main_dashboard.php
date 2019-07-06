<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<table>
	<tbody>
	<?php $no = 1;
	foreach ($mstr_kriterias as $mstr_kriteria): ?>
		<tr>
			<td><?php echo $no++;?></td>
			<td><?php echo $mstr_kriteria->Description ?></td>
		</tr>
		<?php endforeach; ?> 
	</tbody>
</table>
  								
									