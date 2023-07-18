<cfquery name = "GET_YEM" datasource="#DSN3#">
    SELECT * FROM GUNLUK_YEM_HARCAMALARI WHERE animalID = #attributes.animal_id#
</cfquery>    

<cf_catalystHeader>
<cfform name="form_upd_gunlukyemharcamalari" method="post" enctype="multipart/form-data" action="#request.self#?fuseaction=sales.emptypopup_upd_gunlukyemharcamalari">
    <input type="hidden" name="is_submit_form" id="is_submit_form" value="">
    <input type="hidden" name="animal_id" id="animal_id" value="<cfoutput>#attributes.animal_id#</cfoutput>"> 
    <cfoutput query="get_yem">
        <div class="col col-12 col-md-12 col-sm-12 col-xs-12">
            <cfsavecontent variable="message">Günlük Yem Harcamaları Güncelle<!---<cf_get_lang dictionary_id="65157.Hayvanlar">---></cfsavecontent>
            <cf_box title="#message#">
                <cf_box_elements>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-feed_status">
                            <label><cf_get_lang dictionary_id='57493.Aktif'><input type="checkbox" name="feed_status" id="feed_status" value="1" checked></label>&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="col col-4 col-md-4 col-sm-12" type="column" index="0" sort="true">
                        <div class="form-group" id="item-animal_name">
                            <label class="col col-4 col-sm-12">Ad</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput type="text" id="animal_name" name="animal_name" value="#animalName#" maxlength="200" required="yes" message="#getLang('','Hayvan Adı Girmelisiniz',58059)# !">
                            </div>
                        </div>
                        <div class="form-group" id="item-harcama_miktar">
                            <label class="col col-4 col-sm-12">Harcama Miktarı</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="harcama_miktar" id="harcama_miktar" value="#harcamaMiktar#"></cfinput>
                            </div>
                        </div>
                        <div class="form-group" id="item-odeme_durumu">
                            <label class="col col-4 col-sm-12">Ödeme Durumu</label>
                            <div class="col col-8 col-sm-12">
                                <cfinput name="odeme_durumu" id="odeme_durumu" value="#odemeDurumu#"></cfinput>
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