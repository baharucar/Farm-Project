<cfquery name="GET_ANIMAL" datasource="#DSN3#">
    SELECT * FROM HAYVANLAR WHERE animalID = #attributes.animal_id#
</cfquery>

<cf_catalystHeader>
<cfoutput>   
    <cf_box responsive_table="1" title="Hayvan Genel Bilgiler">
        <cf_box_elements>
            <div class="col col-4 col-md-4 col-sm-12" type="column" index="1" sort="true">
                <div class="form-group" id="item-animalid">
                    <div class="col col-8 col-sm-6">
                        <label><b>Hayvan ID <b></label>
                        
                        <label>#animal_id#</label>
                    </div>
                </div>
            </div>
        </cf_box_elements>
    </cf_box>
</cfoutput>

<cf_box title="Diğer Bilgiler">
    <cf_grid_list sort="0">
        <tbody>
            <cfoutput query="get_animal">     
                <tr>
                    <td>
                        <b><i>Hayvan Adı:  <cfoutput>#animalName#</cfoutput></i></b>
                        </br>
                        <b><i>Hayvan Rengi : <cfoutput>#animalColor#</cfoutput> </i></b>
                        </br>
                        <b><i>Hayvan Kilosu : <cfoutput>#animalWeightKG#</cfoutput> </i></b>
                    </td>
                </tr>
            </cfoutput>
        </tbody>
    </cf_grid_list>
</cf_box>