{*/*+***********************************************************************************************************************************
 * The contents of this file are subject to the YetiForce Public License Version 1.1 (the "License"); you may not use this file except
 * in compliance with the License.
 * Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.
 * See the License for the specific language governing rights and limitations under the License.
 * The Original Code is YetiForce.
 * The Initial Developer of the Original Code is YetiForce. Portions created by YetiForce are Copyright (C) www.yetiforce.com. 
 * All Rights Reserved.
 *************************************************************************************************************************************/*}
{strip}
	{if count($DATA) gt 0 }
		<input class="widgetData" type="hidden" value='{Vtiger_Util_Helper::toSafeHTML(ZEND_JSON::encode($DATA))}' />
		<div id="openTicketContainer" class='pull-left ' style='margin-top:17px;'> 
			<canvas style="margin-left:15px;" class='pull-left' id="openTicketsChart" ></canvas>
		</div>
		<div class='pull-left' id='legend' style="margin-left:10px; margin-right:10px;">
			{foreach from=$DATA item=ITEM}
				<div style="margin-top:5px;">				
					<div class='pull-left' style="margin-right:5px; height:25px; width:25px; background-color:{$ITEM['color']}"></div>
					<p class='pull-left'>{ltrim($ITEM['name'])} </p>
				</div>
				<div style="clear:both"></div>
			{/foreach}
		</div>	
		<div style="clear:both"></div>
		<div style="margin-bottom:20px;"></div>

	{else}
		<span class="noDataMsg">
			{vtranslate('LBL_NO')} {vtranslate($MODULE_NAME, $MODULE_NAME)} {vtranslate('LBL_MATCHED_THIS_CRITERIA')}
		</span>
	{/if}
{/strip}