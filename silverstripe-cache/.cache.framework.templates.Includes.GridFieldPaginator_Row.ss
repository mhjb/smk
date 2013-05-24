<?php
$val .= '<tr>
	<td class="bottom-all" colspan="';

$val .= $scope->XML_val('Colspan', null, true);
$val .= '">
		';

if ($scope->hasValue('OnlyOnePage', null, true)) { 
$val .= '
		';


}else { 
$val .= '
			<div class="datagrid-pagination">
				';

$val .= $scope->XML_val('FirstPage', null, true);
$val .= ' ';

$val .= $scope->XML_val('PreviousPage', null, true);
$val .= ' 
				<span class="pagination-page-number">
					';

$val .= _t('Pagination.Page','Page');
$val .= ' 
					<input class="text" value="';

$val .= $scope->XML_val('CurrentPageNum', null, true);
$val .= '" data-skip-autofocus="true" /> 
					';

$val .= _t('TableListField_PageControls.ss.OF','of', 'Example: View 1 of 2');
$val .= ' 
					';

$val .= $scope->XML_val('NumPages', null, true);
$val .= '
				</span> 
				';

$val .= $scope->XML_val('NextPage', null, true);
$val .= ' ';

$val .= $scope->XML_val('LastPage', null, true);
$val .= ' 
			</div>
		';


}
$val .= '
		<span class="pagination-records-number">
			';

$val .= _t('Pagination.View','View', 'Verb. Example: View 1 of 2');
$val .= '
			';

$val .= $scope->XML_val('FirstShownRecord', null, true);
$val .= ' - ';

$val .= $scope->XML_val('LastShownRecord', null, true);
$val .= '
			';

$val .= _t('TableListField_PageControls.ss.OF','of', 'Example: View 1 of 2');
$val .= ' 
			';

$val .= $scope->XML_val('NumRecords', null, true);
$val .= '
		</span>
	</td>
</tr>';

