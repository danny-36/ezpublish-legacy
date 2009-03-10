{* DO NOT EDIT THIS FILE! Use an override template instead. *}

{* DESIGN: Header START *}
<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h2 class="context-title">{'States'|i18n('design/admin/content/edit')}</h2>

{* DESIGN: Header END *}
</div></div></div></div></div></div>

{* DESIGN: Content START *}
<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">

{foreach $object.allowed_assign_state_list as $allowed_assign_state_info}
{* The ez_lock group is an internal group used by WebDAV only *}
{if $allowed_assign_state_info.group.identifier|eq( 'ez_lock' )}
    {continue}
{/if}
<div class="block">
    <label>{$allowed_assign_state_info.group.current_translation.name|wash}</label>
    <select name="SelectedStateIDList[]" {if $allowed_assign_state_info.states|count|eq(1)}disabled="disabled"{/if}>
    {foreach $allowed_assign_state_info.states as $state}
        <option value="{$state.id}" {if $object.state_id_array|contains($state.id)}selected="selected"{/if}>{$state.current_translation.name|wash}</option>
    {/foreach}
    </select>
</div>
{/foreach}

<div class="block">
<input type="submit" value="{'Set'|i18n( 'design/admin/node/view/full' )}" name="StateEditButton" class="button" />
</div>
</div></div></div></div></div></div>
{* DESIGN: Content END *}
