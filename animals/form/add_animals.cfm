<!--- <cfquery name="get_animal" datasource="#DSN3#">
    SELECT
        *
    FROM
        HAYVANLAR
</cfquery>
<cfdump var=#get_animal#>


<cf_catalystHeader>
<cfform name="form_add_animal" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_add_animal">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <cfoutput>
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Hayvan Bilgileri<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
            <cf_box title="#message#">
                <cf_box_elements>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_status">
                            <label><cf_get_lang dictionary_id='57493.Aktif'><input type="checkbox" name="animal_status" id="animal_status" value="1" checked></label>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_name">
                            <label class="col col-4 col-sm-12">Ad</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" id="animal_name" name="animal_name" value="" maxlength="200" required="yes" message="#getLang('','Hayvan Adı Girmelisiniz',58059)# !">
                            </div>
                        </div>
                        <div class="form-group" id="item-animal_color">
                            <label class="col col-4 col-sm-12">Renk</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="animal_color" id="animal_color" value=""></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-animal_weight">
                            <label class="col col-4 col-sm-12">Kilo</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="animal_weight" id="animal_weight" value=""></cfinput>
                            </div>
                        </div>
                      
                        
                    </div>
                </cf_box_elements>
                <cf_box_footer>
                    <cf_workcube_buttons is_upd='0' <!---add_function="number_control()"---> >
                </cf_box_footer>
            </cf_box>
        </div>
    </cfoutput>
</cfform>

--->

<!---
<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">
--->

<cf_catalystHeader>
<cfform name="form_add_suttakip" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_add_animal">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <cfoutput>
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Hayvan bilgileri<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
            <cf_box title="#message#">
                <cf_box_elements>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_status">
                            <label><cf_get_lang dictionary_id='57493.Aktif'><input type="checkbox" name="animal_status" id="animal_status" value="1" checked></label>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_name">
                            <label class="col col-4 col-sm-12">Hayvan Adı</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" id="animal_name" name="animal_name" value="" maxlength="200" required="yes" message="#getLang('','Hayvan Adı Girmelisiniz',58059)# !">
                            </div>
                        </div>
                        <div class="form-group" id="item-animal_color">
                            <label class="col col-4 col-sm-12">Hayvan Renk</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="animal_color" id="animal_color" value=""></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-animal_weight">
                            <label class="col col-4 col-sm-12">Kilo</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="animal_weight" id="animal_weight" value=""></cfinput>
                            </div>
                        </div>

                    </div>
                </cf_box_elements>
                <cf_box_footer>
                    <cf_workcube_buttons is_upd='0' <!---add_function="number_control()"---> >
                </cf_box_footer>
            </cf_box>
        </div>
    </cfoutput>
</cfform>
