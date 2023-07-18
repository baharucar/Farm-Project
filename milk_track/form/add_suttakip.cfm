<cf_catalystHeader>
<cfform name="form_add_suttakip" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_add_suttakip">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <cfoutput>
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message"></cfsavecontent>
            <cf_box title="#message#">
                <cf_box_elements>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_status">
                            <label><cf_get_lang dictionary_id='57493.Aktif'><input type="checkbox" name="animal_status" id="animal_status" value="1" checked></label>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_name">
                            <label class="col col-4 col-sm-12">Hayvan İsmi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" id="animal_name" name="animal_name" value="" maxlength="200" required="yes" message="#getLang('','Hayvan Adı Girmelisiniz',58059)# !">
                            </div>
                        </div>
                        <div class="form-group" id="item-sagim_saati">
                            <label class="col col-4 col-sm-12">Sağım Saati</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sagim_saati" id="sagim_saati" value=""></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-sut_miktari">
                            <label class="col col-4 col-sm-12">Süt Miktarı</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sut_miktari" id="sut_miktari" value=""></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-sagim_suresi">
                            <label class="col col-4 col-sm-12">Sağım Süresi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sagim_suresi" id="sagim_suresi" value=""></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-tarih">
                            <label class="col col-4 col-sm-12">Sağım Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="tarih" value="" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="tarih"></span>
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
