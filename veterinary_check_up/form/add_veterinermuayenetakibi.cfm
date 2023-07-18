<!--- <cfform name="form_add_veterinermuayenetakibi" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_add_veterinermuayenetakibi">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <cfoutput>
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Veteriner Muayene Bilgileri<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
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
                        <div class="form-group" id="item-son_muayene_tarihi">
                            <label class="col col-4 col-sm-12">Son Muayene Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="son_muayene_tarihi" value="" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="son_muayene_tarihi"></span>
                            </div>
                        </div>
                        <div class="form-group" id="item-sonraki_muayene_tarihi">
                            <label class="col col-4 col-sm-12">Sonraki Muayene Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="sonraki_muayene_tarihi" value="" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="sonraki_muayene_tarihi"></span>
                            </div>
                        </div>
                        <div class="form-group" id="item-son_muayene_ücreti">
                            <label class="col col-4 col-sm-12">Son Muayene Ücreti</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="son_muayene_ücreti" id="son_muayene_ücreti" value=""></cfinput>
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
<cf_catalystHeader>
<cfform name="form_add_veterinermuayenetakibi" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_add_veterinermuayenetakibi">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <cfoutput>
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Veteriner Muayene Takip bilgileri<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
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
                        <div class="form-group" id="item-son_muayene_tarihi">
                            <label class="col col-4 col-sm-12">Son Muayene Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="son_muayene_tarihi" value="" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="son_muayene_tarihi"></span>
                            </div>
                        </div>
                       
                        <div class="form-group" id="item-sonraki_muayene_tarihi">
                            <label class="col col-4 col-sm-12">Sonraki Muayene Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="sonraki_muayene_tarihi" value="" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="sonraki_muayene_tarihi"></span>
                            </div>
                        </div>
                        <div class="form-group" id="item-son_muayene_ücreti">
                            <label class="col col-4 col-sm-12">Son Muayene Ücreti</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="son_muayene_ücreti" id="son_muayene_ücreti" value=""></cfinput>
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