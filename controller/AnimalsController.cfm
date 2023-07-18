<cfscript>
    if(attributes.tabMenuController eq 0)
    {
        WOStruct = StructNew();
		WOStruct['#attributes.fuseaction#'] = structNew();	
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		
        WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.list_animals';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = 'V16/add_options/display/list_animals.cfm';

		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.form_add_animals';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = 'V16/add_options/animals/form/add_animals.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = 'V16/add_options/animals/query/add_animals_query.cfm';
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = 'sales.form_upd_animals&event=upd&animal_id=';
		
		WOStruct['#attributes.fuseaction#']['upd'] = structNew();
		WOStruct['#attributes.fuseaction#']['upd']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['upd']['fuseaction'] = 'sales.form_upd_animals';
		WOStruct['#attributes.fuseaction#']['upd']['filePath'] = 'V16/add_options/animals/form/upd_animals.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['queryPath'] = 'V16/add_options/animals/query/upd_animals_query.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['nextEvent'] = 'sales.list_animals&event=upd';
		
		WOStruct['#attributes.fuseaction#']['det'] = structNew();
		WOStruct['#attributes.fuseaction#']['det']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['det']['fuseaction'] = 'sales.form_det_animals';
		WOStruct['#attributes.fuseaction#']['det']['filePath'] = 'V16/add_options/animals/display/det_animals.cfm';
		WOStruct['#attributes.fuseaction#']['det']['nextEvent'] = 'sales.list_animals&event=det';
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
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['href'] = "#request.self#?fuseaction=sales.list_animals";

			tabMenuData = SerializeJSON(tabMenuStruct['#attributes.fuseaction#']['tabMenus']);
		}

		if(isdefined("attributes.event") and attributes.event is 'upd')
		{
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['menus'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']= structNew();
			i=0;

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['detail']['text'] = '#getlang('main',359)#'; /* detay için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['detail']['href'] = "#request.self#?fuseaction=sales.list_animals&event=det&animal_id=#url.animal_id#";

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['text'] = '#getLang('main',97)#'; /* liste için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['upd']['icons']['list-ul']['href'] = "#request.self#?fuseaction=sales.list_animals";

			tabMenuData = SerializeJSON(tabMenuStruct['#attributes.fuseaction#']['tabMenus']);
		}
		if(isdefined("attributes.event") and attributes.event is 'det')
		{
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['menus'] = structNew();
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['icons']= structNew();
			i=0;

			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['icons']['fa fa-pencil']['text'] = '#getLang('main',52,'güncelle')#'; /* güncelle için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['icons']['fa fa-pencil']['href'] = "#request.self#?fuseaction=sales.list_animals&event=upd&animal_id=#url.animal_id#";
			
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['icons']['list-ul']['text'] = '#getLang('main',97)#'; /* liste için link */ 
			tabMenuStruct['#attributes.fuseaction#']['tabMenus']['det']['icons']['list-ul']['href'] = "#request.self#?fuseaction=sales.list_animals";
			
			tabMenuData = SerializeJSON(tabMenuStruct['#attributes.fuseaction#']['tabMenus']);
		}
	}
</cfscript>