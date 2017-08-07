{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.7                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2017                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
{* \compucorp\sites\all\modules\civicrm\templates\CRM\Member\Form *}
{* Membership Period within View Membership *}
{$sl}
<div class="view-content">
    <div class="crm-block crm-content-block">
    {include file="CRM/common/jsortable.tpl" useAjax=0}
        <div id="related-contacts-memberships">
            {strip}
                <table id="related_contact" class="display">
                    <thead>
                    <tr>
                        <th>{ts}Term/Period{/ts}</th>
                        <th>{ts}Membership Type{/ts}</th>
                        <th>{ts}Status{/ts}</th>
                        <th>{ts}Start date{/ts}</th>
                        <th>{ts}End date{/ts}</th>
                    </tr>
                    </thead>
                    {assign var='i' value=1}
                    {foreach from=$membershipPeriodInfo item=rel}
                    <tr id="rel_{$rel.id}" class="{cycle values="odd-row,even-row"} row-relationship {if $rel.membership_id}row-highlight{/if}">
                        <td data-order="{$i}">{$i}</td>
                        <td data-order="{$rel.membership_type_name}">{$rel.membership_type_name}</td>
                        <td data-order="{$rel.membership_status_name}">{$rel.membership_status_name}</td>
                        <td data-order="{$rel.start_date}">{$rel.start_date|crmDate}</td>
                        <td data-order="{$rel.end_date}">{$rel.end_date|crmDate}</td>
                    </tr>
                    {assign var='i' value=$i+1}
                    {/foreach}
                </table>
            {/strip}
        </div>
    </div>
</div>
