{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 * Modified and improved by crm-now.de
*
 ********************************************************************************/
-->*}
{strip}
	{include file='DetailViewBlockView.tpl'|@vtemplate_path:$MODULE_NAME RECORD_STRUCTURE=$RECORD_STRUCTURE MODULE_NAME=$MODULE_NAME}
		<table class="table table-bordered equalSplit detailview-table" border=1>
		<thead>
		<tr>
			<th class="blockHeader">
				{vtranslate('LBL_SYNC_HISTORY',$MODULE_NAME)} <div style="float:right;font-weight:normal"><input type="checkbox" name="verbose" id="verbose"> {vtranslate('LBL_VERBOSE',$MODULE_NAME)}</div>
		</tr>
		<tr>
			<td class="fieldValue" >
				<div readonly class="scrollable" name="berliCleverReachlog" id="berliCleverReachlog" style="max-height: 40vh;min-height:30vh; overflow:auto"></div>
			</td>
		</tr>
		</thead>
		</table>

    {if $BLOCK_LIST["LBL_CLEVERREACH_MODULE_NAME"]->fields["lastsynchronization"]->fieldvalue == ""}
    <script type="text/javascript">
        jQuery('#berliCleverReach_detailView_fieldValue_lastsynchronization').html("{vtranslate("LBL_NEVER",$MODULE_NAME)}");
    </script>
    {/if}
{/strip}