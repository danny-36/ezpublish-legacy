{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<label>{"Selection"|i18n("design/standard/class/datatype")}</label><br/>
{section show=$class_attribute.data_int1}
    {"Multiple choice"|i18n("design/standard/class/datatype")}<br/>
{section-else}
    {"Single choice"|i18n("design/standard/class/datatype")}<br/>
{/section}

<label>{"Representation"|i18n("design/standard/class/datatype")}</label><br/>
{section show=$class_attribute.data_int2}
    {"Option style"|i18n("design/standard/class/datatype")}<br/>
{section-else}
    {"Checkbox style"|i18n("design/standard/class/datatype")}<br/>
{/section}

<table class="list" cellspacing="0" cellpadding="0">
<tr>
    <th>{"ID"|i18n("design/standard/class/datatype")}</th>
    <th>{"Enum Element"|i18n("design/standard/class/datatype")}</th>
    <th>{"Enum Value"|i18n("design/standard/class/datatype")}</th>
</tr>
{section name=EnumList loop=$class_attribute.content.enum_list sequence=array( bglight, bgdark )}
<tr>
    <td>{$EnumList:item.id}</td>
    <td>{$EnumList:item.enumelement|wash}</td>
    <td>{$EnumList:item.enumvalue|wash}</td>
</tr>
{/section}
</table>
