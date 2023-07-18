<cfquery name="GET_SUT" datasource="#DSN3#">
    SELECT * FROM SUT_TAKIP WHERE animalID = #attributes.animal_id#
</cfquery>

<cf_catalystHeader>
<cfform name="form_upd_suttakip" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_upd_suttakip">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <input type="hidden" name="animal_id" id="animal_id" value="<cfoutput>#attributes.animal_id#</cfoutput>">
    <cfoutput query="get_sut">
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Süt Takip Güncelleme<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
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
                                <cfinput type="text" id="animal_name" name="animal_name" value="#animalname#" maxlength="200" required="yes" message="#getLang('','Hayvan Adı Girmelisiniz',58059)# !">
                            </div>
                        </div>
                        <div class="form-group" id="item-sagim_saati">
                            <label class="col col-4 col-sm-12">Sağım Saati</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sagim_saati" id="sagim_saati" value="#sagimsaati#"></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-sut_miktar">
                            <label class="col col-4 col-sm-12">Süt Miktarı</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sut_miktar" id="sut_miktar" value="#sutMiktarKG#"></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-sagim_suresi">
                            <label class="col col-4 col-sm-12">Sağım Süresi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="sagim_suresi" id="sagim_suresi" value="#sagimSuresiSN#"></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-tarih">
                            <label class="col col-4 col-sm-12">Sağım Tarihi</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" name="tarih" value="#tarih#" validate="#validate_style#" required="yes" message="#message#" maxlength="10">
                                <span class="input-group-addon"><cf_wrk_date_image date_field="tarih"></span>
                            </div>
                        </div>
                    </div>
                </cf_box_elements>
                <cf_box_footer>
                    <cf_workcube_buttons is_upd='1' <!---add_function="number_control()"---> >
                </cf_box_footer>
            </cf_box>
        </div>
    </cfoutput>
</cfform>