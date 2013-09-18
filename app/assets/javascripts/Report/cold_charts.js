
    //cold_consumption_bar_stacked_chart

    var bar = new RGraph.Bar('cold_consumption_bar_stacked_chart', getchartvalues('cold_consumption_year',4,'volumeStream','flowTemperature','returnTemperature','processTemperature'))
        .Set('grouping', 'stacked')
        .Set('labels',getdates('cold_consumption_year'))
        .Set('labels.above', true)
        .Set('labels.above.decimals', 2)
        .Set('linewidth', 2)
        .Set('strokestyle', 'white')
        .Set('colors', ['green','blue','grey','orange'])
        .Set('shadow', true)
        .Set('shadow.offsetx', 1)
        .Set('shadow.offsety', 1)
        .Set('shadow.blue', 5)
        .Set('hmargin', 25)
        .Set('gutter.left', 45)
        .Set('background.grid.vlines', false)
        .Set('background.grid.border', false)
        .Set('axis.color', '#ccc')
        .Set('noyaxis', true)
        .Set('key', ['Volumenstrom','Vorlauftemperatur','Rücklauftemperatur','Prozesstemperatur'])
       // .Set('key.position', 'gutter');
    bar.Set('key.position.x', bar.canvas.width - 138)
        .Set('key.position.y', 2)
        .Set('key.background','white')

       .Set('key.colors', ['green','blue','grey','orange'])

        .ondraw = function (obj)
    {
        for (var i=0; i<obj.coords.length; ++i) {
            obj.context.fillStyle = 'white';
            RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
        }
    }

    bar.Draw();

             //cold_production_bar_graph
    var bar_cold_production = new RGraph.Bar('cold_production_bar_stacked_chart', getchartvalues('cold_production_year',9,"operatingHours","energyConsumption","coldAmount","massFlow","flowTemperature","returnTemperature","temperatureIn","temperatureOut","waterRequirement"))
        .Set('grouping', 'stacked')
        .Set('labels',getdates('cold_production_year'))
        .Set('labels.above', true)
        .Set('labels.above.decimals', 2)
        .Set('linewidth', 2)
        .Set('strokestyle', 'white')
        .Set('colors', ['green','blue','grey','orange','red','black','aquamarine','violet','pink'])
        .Set('shadow', true)
        .Set('shadow.offsetx', 1)
        .Set('shadow.offsety', 1)
        .Set('shadow.blue', 5)
        .Set('hmargin', 25)
        .Set('gutter.left', 45)
        .Set('background.grid.vlines', false)
        .Set('background.grid.border', false)
        .Set('axis.color', '#ccc')
        .Set('noyaxis', true)
        .Set('key', ['Betriebsstunden','Strombezug','Kältemenge','Massenstrom','Vorlauftemperatur','Rücklauftemperatur','Temperatur ein','Temperatur aus','Wasserbedarf'])
        bar_cold_production.Set('key.position.x', bar_cold_production.canvas.width - 138)
        .Set('key.position.y', 2)
        .Set('key.background','white')
        .Set('key.colors', ['green','blue','grey','orange','red','black','aquamarine','violet','pink'])
        .ondraw = function (obj)
    {
        for (var i=0; i<obj.coords.length; ++i) {
            obj.context.fillStyle = 'white';
            RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
        }
    }

    bar_cold_production.Draw();


   // cold_distribution_bar_stacked_chart
    var bar_cold_distribution = new RGraph.Bar('cold_distribution_bar_stacked_chart', getchartvalues('cold_distribution_year',3,'compression','flowTemperature','returnTemperature'))
        .Set('grouping', 'stacked')
        .Set('labels',getdates('cold_distribution_year'))
        .Set('labels.above', true)
        .Set('labels.above.decimals', 2)
        .Set('linewidth', 2)
        .Set('strokestyle', 'white')
        .Set('colors', ['green','blue','grey'])
        .Set('shadow', true)
        .Set('shadow.offsetx', 1)
        .Set('shadow.offsety', 1)
        .Set('shadow.blue', 5)
        .Set('hmargin', 25)
        .Set('gutter.left', 45)
        .Set('background.grid.vlines', false)
        .Set('background.grid.border', false)
        .Set('axis.color', '#ccc')
        .Set('noyaxis', true)
        .Set('key', ['Druck', 'Vorlauftemperatur','Rücklauftemperatur'])
       // .Set('key.position', 'gutter');
         bar_cold_distribution.Set('key.position.x', bar_cold_distribution.canvas.width - 138)
        .Set('key.position.y', 2)
        .Set('key.background','white')
        .Set('key.colors', ['green','blue','grey'])

        .ondraw = function (obj)
    {
        for (var i=0; i<obj.coords.length; ++i) {
            obj.context.fillStyle = 'white';
            RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
        }
    }

    bar_cold_distribution.Draw();
