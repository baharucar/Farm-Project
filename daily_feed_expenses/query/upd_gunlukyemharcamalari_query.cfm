<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="UPD_YEM" datasource="#DSN3#">
        UPDATE 
            GUNLUK_YEM_HARCAMALARI
        SET
            animalName = <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
            harcamaMiktar = <cfif isDefined("attributes.harcama_miktar") and len(attributes.harcama_miktar)>'#attributes.harcama_miktar#'<cfelse>NULL</cfif>,
            odemeDurumu = <cfif isDefined("attributes.odeme_durumu") and len(attributes.odeme_durumu)>#attributes.odeme_durumu#<cfelse>NULL</cfif>,
            IS_ACTIVE = <cfif isDefined("attributes.feed_status") and len(attributes.feed_status)>1<cfelse>0</cfif>
        WHERE animalID = #attributes.animal_id#   
       
    </cfquery>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_gunlukyemharcamalari&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#gunluk_yem_upd_hata.html">
    </cfcatch>
</cftry>