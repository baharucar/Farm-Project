<cf_get_lang_set module_name="sales">
    <cfparam name="attributes.keyword" default="">
    
    <cfparam name="attributes.page" default=1>
    <cfparam name="attributes.maxrows" default='#session.ep.maxrows#'>
    <cfparam name="attributes.is_submit" default="">
    <cfparam name="url.property_id" default="">

    <cfif isDefined("attributes.is_submit") and len(attributes.is_submit)>
        <cfquery name="GET_YEM" datasource="#DSN3#">
            SELECT
                *
            FROM
                GUNLUK_YEM_HARCAMALARI
            WHERE
                IS_ACTIVE = 1
                <cfif isDefined("attributes.keyword") and len(attributes.keyword)>
                    AND  animalID LIKE '%#attributes.keyword#%'
                </cfif>
        </cfquery>
    </cfif>
    
<div class="col col-12 col-md-12 col-sm-12 col-xs-12">
	<cf_box>
		<cfform action="#request.self#?fuseaction=sales.list_gunlukyemharcamalari" method="post" name="filter_yem">
			<cfinput type="hidden" name="is_submit" id="is_submit" value="1">
			<cf_box_search>
				<div class="form-group">
					<cfsavecontent variable="placemessage"><cf_get_lang dictionary_id='57460.Filtre'></cfsavecontent>
					<cfinput type="text" name="keyword" id="keyword" placeholder="#placemessage#" style="width:100px;" value="#attributes.keyword#" maxlength="50">
				</div>
				<div class="form-group small">
					<cfsavecontent variable="message"><cf_get_lang dictionary_id='57537.Sayi_Hatasi_Mesaj'></cfsavecontent>
					<cfinput type="text" name="maxrows" value="#attributes.maxrows#" required="yes" onKeyUp="isNumber(this)" validate="integer" range="1,999" message="#message#" maxlength="3" style="width:25px;">                    
				</div>
				<div class="form-group">
					<cfsavecontent variable="message_date"><cf_get_lang dictionary_id='57782.Tarih Değerini Kontrol Ediniz'>!</cfsavecontent>
					<cf_wrk_search_button button_type="4">                    
				</div>
			</cf_box_search>
		</cfform>
	</cf_box>
    <cfsavecontent variable="message"><cf_get_lang dictionary_id="66399.Günlük Yem Harcamaları"></cfsavecontent>
        <cf_box title="#message#" uidrop="1" hide_table_column="1">
            <cf_flat_list>
                <thead>
                    <th width="10">Sıra</th>
                    <th>hayvan ismi</th>
                    <th>harcama miktarı</th>
                    <th>ödeme durumu</th>
                    <th><a href="<cfoutput>#request.self#?fuseaction=sales.list_gunlukyemharcamalari&event=add</cfoutput>"><i class="fa fa-plus" title="<cf_get_lang dictionary_id='57582.ekle'>" alt="<cf_get_lang dictionary_id='57582.ekle'>"></i></a></th>
                </thead>
                <tbody>
                    <cfif isDefined("attributes.is_submit") and len(attributes.is_submit)>
                        <cfoutput query="get_yem">
                            <tr>
                                <td>#currentRow#</td>
                                <td><a href="#request.self#?fuseaction=sales.list_gunlukyemharcamalari&event=upd&animal_id=#animalID#">#animalName#</a></td>
                                <td>#harcamaMiktar#</td>
                                <td>#odemeDurumu#</td>
                            </tr>
                        </cfoutput>
                    </cfif>
                </tbody>
            </cf_flat_list>
        </cf_box>
    </div>