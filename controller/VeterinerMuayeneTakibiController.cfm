<cfscript>
    if(attributes.tabMenuController eq 0)
    {
        WOStruct = StructNew();
		WOStruct['#attributes.fuseaction#'] = structNew();	
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		
        WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.list_veterinermuayenetakibi';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = 'V16/add_options/display/list_veterinermuayenetakibi.cfm';

		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.form_add_veterinermuayenetakibi';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = 'V16/add_options/veterinary_check_up/form/add_veterinermuayenetakibi.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = 'V16/add_options/veterinary_check_up/query/add_veterinermuayenetakibi_query.cfm';
        WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = 'sales.form_upd_veterinermuayenetakibi&event=upd&muayene_id=';
		
		WOStruct['#attributes.fuseaction#']['upd'] = structNew();
		WOStruct['#attributes.fuseaction#']['upd']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['upd']['fuseaction'] = 'sales.form_upd_veterinermuayenetakibi';
		WOStruct['#attributes.fuseaction#']['upd']['filePath'] = 'V16/add_options/veterinary_check_up/form/upd_veterinermuayenetakibi.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['queryPath'] = 'V16/add_options/veterinary_check_up/query/upd_veterinermuayenetakibi_query.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['nextEvent'] = 'sales.list_veterinermuayenetakibi&event=upd';

		WOStruct['#attributes.fuseaction#']['det'] = structNew();
		WOStruct['#attributes.fuseaction#']['det']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['det']['fuseaction'] = 'sales.form_det_veterinermuayenetakibi';
		WOStruct['#attributes.fuseaction#']['det']['filePath'] = 'V16/add_options/veterinary_check_up/display/det_veterinermuayenetakibi.cfm';
		WOStruct['#attributes.fuseaction#']['det']['nextEvent'] = 'sales.list_veterinermuayenetakibi&event=det';
		WOStruct['#attributes.fuseaction#']['det']['parameters'] = 'animal_id=##attributes.animal_id##';
		WOStruct['#attributes.fuseaction#']['det']['Identity'] = '##attributes.animal_id##';


		
    }
	else
	{
		fuseactController = caller.attributes.fuseaction;
		getLang = caller.getLang;
		tabMenuStruct = StructNew();
		tabMenuStruct['#attributes.fuseaction#'] = structNew();
		tabMenuStruct['#attributes.fuseaction#']['tabMenus'] = structNew();

		if(isdefined("attributes.event") and attributes.event is 'add')
		{
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['add'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['add']['menus'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['add']['icons']= structNew();
			i=0;

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['text'] = '#getLang('main',97)#'; /* liste için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['href'] = "#request.self#?fuseaction=sales.list_veterinermuayenetakibi";

			tabMenuData = SerializeJSON(tabMenuStruct['#attributes.fuseaction#']['tabMenus']);
		}

		if(isdefined("attributes.event") and attributes.event is 'upd')
		{
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['menus'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']= structNew();
			i=0;

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['detail']['text'] = '#getlang('main',359)#'; /* detay için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['detail']['href'] = "#request.self#?fuseaction=sales.list_veterinermuayenetakibi&event=det&animal_id=#url.animal_id#";

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['text'] = '#getLang('main',97)#'; /* liste için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['href'] = "#request.self#?fuseaction=sales.list_veterinermuayenetakibi";

			tabMenuData = SerializeJSON(tabMenuStruct['#attributes.fuseaction#']['tabMenus']);
		}
	}

	
	
</cfscript>