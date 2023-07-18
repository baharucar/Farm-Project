
<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="UPD_SUT" datasource="#DSN3#">
        UPDATE
        
         SUT_TAKIP
            
        SET    
            animalName=<cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
            sagimSaati=<cfif isDefined("attributes.sagim_saati") and len(attributes.sagim_saati)>'#attributes.sagim_saati#'<cfelse>NULL</cfif>,
            sutMiktarKG= <cfif isDefined("attributes.sut_miktar") and len(attributes.sut_miktar)>#attributes.sut_miktar#<cfelse>NULL</cfif>,
            sagimSuresiSN=<cfif isDefined("attributes.sagim_suresi") and len(attributes.sagim_suresi)>#attributes.sagim_suresi#<cfelse>NULL</cfif>,
            tarih=<cfif isDefined("attributes.tarih") and len(attributes.tarih)>'#attributes.tarih#'<cfelse>NULL</cfif>,
            IS_ACTIVE=<cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
        WHERE animalID = #attributes.animal_id#
    </cfquery>   

    <script type="text/javascript">
      window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_suttakip&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
         <cfsavecontent variable="ssss">
           <cfdump var="#cfcatch#">
         </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#suttakip_upd_hata.html">
    </cfcatch>
</cftry>