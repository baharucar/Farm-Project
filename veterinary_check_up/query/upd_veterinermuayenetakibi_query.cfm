<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="UPD_VET" datasource="#DSN3#">
        UPDATE 
            VETERINER_MUAYENE_TAKIBI   
        SET
            animalName = <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
            son_muayene_tarihi = <cfif isDefined("attributes.son_muayene_tarih") and len(attributes.son_muayene_tarih)>'#attributes.son_muayene_tarih#'<cfelse>NULL</cfif>,
            sonraki_muayene_tarihi = <cfif isDefined("attributes.sonraki_muayene_tarih") and len(attributes.sonraki_muayene_tarih)>#attributes.sonraki_muayene_tarih#<cfelse>NULL</cfif>,
            IS_ACTIVE = <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
        WHERE animalID = #attributes.animal_id#     
       
    </cfquery>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_veterinermuayenetakibi&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#muayene_upd_hata.html">
    </cfcatch>
</cftry>